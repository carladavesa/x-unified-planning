"""scrabble planning domain.

This module implements the scrabble benchmark as a `Domain`.
It is intended to be executed via `run.py`.

Example:
  python run.py --domain scrabble --compilation M1 --solving fast-downward
"""
from itertools import product
from typing import Dict, Optional
from unified_planning.model import Object
from unified_planning.shortcuts import (
    ArrayType,
    Fluent,
    IntType,
    InstantaneousAction,
    MinimizeActionCosts,
    Problem, UserType, Not, And, Equals, BoolType, SetType, Or, SetMember, SetRemove, SetCardinality,
    SetAdd, LT, Int
)

from domains.base import Domain


ScrabbleInstance = tuple[int, int, list[tuple[str, ...]], list[str]]
HAND_SIZE = 7


def _chain_instance(board_size: int, dictionary: tuple[str, ...], hand_size: int = HAND_SIZE, extra: tuple[str, ...] = ()) -> ScrabbleInstance:
    """Small English dictionaries with a reproducible chain of crossing words."""
    words = [tuple(word) for word in dictionary]
    if any(left[-1] != right[0] for left, right in zip(words, words[1:])):
        raise ValueError("Successive words must share their last/first letter.")
    bag = [*words[0], *(letter for word in words[1:] for letter in word[1:])]
    return board_size, hand_size, words + [tuple(word) for word in extra], bag

def _instance(board_size: int, hand_size: int, words: tuple[str, ...], bag: str) -> ScrabbleInstance:
    """Bag given as a string, in drawing order."""
    return board_size, hand_size, [tuple(word) for word in words], list(bag)

# (board size, hand capacity, dictionary words, shuffled bag); every instance verified solvable
INSTANCES: Dict[str, ScrabbleInstance] = {
    # W: number of words (board 11, hand 7)
    "w2": _instance(11, 7, ('HIM', 'DIRT'), "TIHRMD"),  # bag 6, k 2, cost 2
    "w3": _instance(11, 7, ('HIM', 'DIRT', 'GET'), "HIDRGMET"),  # bag 8, k 3, cost 3
    "w4": _instance(11, 7, ('HIM', 'DIRT', 'GET', 'EDGE'), "EDEGGDIHMRT"),  # bag 11, k 15, cost 4
    "w5": _instance(11, 7, ('HIM', 'DIRT', 'GET', 'EDGE', 'PEAR'), "IAPDRETDGHGMER"),  # bag 14, k 21, cost 5
    "w6": _instance(11, 7, ('HIM', 'DIRT', 'GET', 'EDGE', 'PEAR', 'NOR'), "HOGTREERDIGMPDNA"),  # bag 16, k 23, cost 6
    "w7": _instance(11, 7, ('HIM', 'DIRT', 'GET', 'EDGE', 'PEAR', 'NOR', 'OVEN'), "NOEVHNIEGDTDRAGMPER"),  # bag 19, k 51, cost 7
    "w8": _instance(11, 7, ('JAM', 'MAIL', 'MIX', 'IDEA', 'PINE', 'MEN', 'NAP', 'SNOW'), "INENXPMMSEDAAIAJLWMON"),  # bag 21, k 87, cost 8
    # B: board size (same 5 words and bag, hand 7)
    "b07": _instance(7, 7, ('HIM', 'HEN', 'VAN', 'MAP', 'OLIVE'), "HAVNEEOILIMAP"),  # bag 13, k 12, cost 5
    "b09": _instance(9, 7, ('HIM', 'HEN', 'VAN', 'MAP', 'OLIVE'), "HAVNEEOILIMAP"),  # bag 13, k 12, cost 5
    "b11": _instance(11, 7, ('HIM', 'HEN', 'VAN', 'MAP', 'OLIVE'), "HAVNEEOILIMAP"),  # bag 13, k 12, cost 5
    "b13": _instance(13, 7, ('HIM', 'HEN', 'VAN', 'MAP', 'OLIVE'), "HAVNEEOILIMAP"),  # bag 13, k 12, cost 5
    # H: hand size (same words and bag as b07, board 7; b07 is hand 7)
    "h4": _instance(7, 4, ('HIM', 'HEN', 'VAN', 'MAP', 'OLIVE'), "HAVNEEOILIMAP"),  # bag 13, k 12, cost 5
    "h5": _instance(7, 5, ('HIM', 'HEN', 'VAN', 'MAP', 'OLIVE'), "HAVNEEOILIMAP"),  # bag 13, k 12, cost 5
    "h9": _instance(7, 9, ('HIM', 'HEN', 'VAN', 'MAP', 'OLIVE'), "HAVNEEOILIMAP"),  # bag 13, k 12, cost 5
    # X: extra dictionary words (same words and bag as b07)
    "x3": _instance(7, 7, ('HIM', 'HEN', 'VAN', 'MAP', 'OLIVE', 'PLAN', 'MAN', 'NAIL'), "HAVNEEOILIMAP"),  # bag 13, k 20, cost 5
    "x6": _instance(7, 7, ('HIM', 'HEN', 'VAN', 'MAP', 'OLIVE', 'PLAN', 'MAN', 'NAIL', 'ONE', 'NAP', 'PINE'), "HAVNEEOILIMAP"),  # bag 13, k 28, cost 5
    "x9": _instance(7, 7, ('HIM', 'HEN', 'VAN', 'MAP', 'OLIVE', 'PLAN', 'MAN', 'NAIL', 'ONE', 'NAP', 'PINE', 'AIM', 'PALM', 'OIL'), "HAVNEEOILIMAP"),  # bag 13, k 36, cost 5
    # Q: alternative solutions with different costs (board 9, hand 7)
    "q1": _instance(9, 7, ('BAT', 'ARM', 'LOT', 'LIP', 'PIE', 'MEAL', 'BEAR', 'TABLE', 'TILE', 'ATOM', 'ROPE'), "TAPEIBMLORI"),  # bag 11, k 14, cost 4-5
    "q2": _instance(9, 7, ('WIN', 'COW', 'OWN', 'INK', 'SKI', 'SOCK', 'SNOW', 'COIN'), "OOIWNNIWSCK"),  # bag 11, k 44, cost 4-5
    "q3": _instance(9, 7, ('FUN', 'RAN', 'ARC', 'FIN', 'BIN', 'BARN', 'CABIN', 'RAIN'), "FINNAUIBACR"),  # bag 11, k 36, cost 4-5
    "q4": _instance(9, 7, ('MEN', 'END', 'RAM', 'EGG', 'BIG', 'EDGE', 'EARN', 'BARN', 'DEAR', 'BAND', 'BIRD'), "RGDNMEIEGAB"),  # bag 11, k 22, cost 4-5
}

class ScrabbleDomain(Domain):
    def __init__(self) -> None:
        self._instances = INSTANCES

    def list_instances(self) -> dict[str, dict[str, int]]:
        return {
            name: {
                "board_size": board_size,
                "hand_size": hand_size,
                "min_word_length": min(map(len, words)),
                "max_word_length": max(map(len, words)),
                "words": len(words),
                "bag_tiles": len(bag),
            }
            for name, (board_size, hand_size, words, bag) in self._instances.items()
        }

    def get_instance(self, instance: Optional[str] = None) -> ScrabbleInstance:
        if instance is not None and instance in self._instances:
            return self._instances[instance]
        raise ValueError(f"Instance '{instance}' not found!")

    def build_problem(self, instance: str | None = None) -> "Problem":
        scrabble_problem = Problem('scrabble_problem')

        board_size, n_hand, dictionary_symbols, bag_symbols = self.get_instance(instance)

        Letter = UserType('Letter')
        none = Object('none', Letter)
        letters = {
            symbol: Object(symbol, Letter)
            for symbol in sorted({symbol for word in dictionary_symbols for symbol in word} | set(bag_symbols))
        }
        scrabble_problem.add_objects([none, *letters.values()])

        # bag of letters
        array_bag = [letters[symbol] for symbol in bag_symbols]
        total_letters = len(array_bag)
        # dictionary
        dictionary_words = [[letters[symbol] for symbol in word] for word in dictionary_symbols]

        board = Fluent('board', ArrayType(board_size, ArrayType(board_size, Letter)))
        hand = Fluent('hand', SetType(IntType(0, total_letters - 1)))
        index_bag = Fluent('index_bag', IntType(0, total_letters - 1))
        hand_full = Fluent('hand_full', BoolType())
        bag_exhausted = Fluent('bag_exhausted', BoolType())
        is_first_word = Fluent('is_first_word', BoolType())

        scrabble_problem.add_fluent(board, default_initial_value=none)
        scrabble_problem.add_fluent(index_bag, default_initial_value=0)
        scrabble_problem.add_fluent(hand, default_initial_value=set())
        scrabble_problem.add_fluent(hand_full, default_initial_value=False)
        scrabble_problem.add_fluent(is_first_word, default_initial_value=True)
        scrabble_problem.add_fluent(bag_exhausted, default_initial_value=False)

        # Pick one at a time - until 7 letters in hand
        pick_letter = InstantaneousAction('pick_letter')
        pick_letter.add_precondition(Not(hand_full)) # your hand is not full
        pick_letter.add_precondition(Not(bag_exhausted)) # there are letters left
        # Do not advance past the final valid bag index.
        pick_letter.add_increase_effect(
            index_bag, 1, Not(Equals(index_bag, total_letters - 1))
        )
        pick_letter.add_effect(hand, SetAdd(hand, index_bag)) # Bag index (letter) added to hand
        pick_letter.add_effect(hand_full, True, Equals(SetCardinality(hand), n_hand - 1)) # is hand full?
        pick_letter.add_effect(hand_full, False, LT(SetCardinality(hand), n_hand - 1)) # is hand full?
        pick_letter.add_effect(bag_exhausted, True, Equals(index_bag, total_letters - 1)) # are there letters left?
        scrabble_problem.add_action(pick_letter)

        actions_for_cost = [pick_letter]
        for i, word in enumerate(dictionary_words):
            n_letters = len(word)
            # We find the bag indices for each letter
            indices = []
            for j in range(n_letters):
                indices.append([k for k, l in enumerate(array_bag) if l == word[j]])

            for letter_indices in product(*indices):
                # All indices must be different
                if len(set(letter_indices)) < n_letters:
                    continue

                place_word_h = InstantaneousAction(f'place_word_h_{word}_{'_'.join(map(str, letter_indices))}',
                                                   r=IntType(0, board_size-1),
                                                   c=IntType(0, board_size-n_letters))
                r = place_word_h.parameter('r')
                c = place_word_h.parameter('c')
                # either the hand is full or the bag exhausted
                place_word_h.add_precondition(Or(hand_full, bag_exhausted))
                # the previous cell should be empty or edge
                place_word_h.add_precondition(Or(Equals(c,0), Equals(board[r][c-1], none)))
                # same with the next cell
                place_word_h.add_precondition(Or(Equals(c+n_letters, board_size), Equals(board[r][c+n_letters], none)))
                # at least one position is empty
                place_word_h.add_precondition(Or(*[Equals(board[r][c+l], none) for l in range(n_letters)]))
                # for each position:
                #   either the letter is already there
                #   or the position (and its orthogonal sides) are empty, the letter is in hand
                for l in range(n_letters):
                    place_word_h.add_precondition(
                        Or(
                            Equals(board[r][c+l], word[l]),
                            And(
                                Equals(board[r][c+l], none),
                                Or(Equals(r, 0), Equals(board[r - 1][c + l], none)),
                                Or(Equals(r, board_size - 1), Equals(board[r + 1][c + l], none)),
                                SetMember(hand, letter_indices[l])
                            )
                        )
                    )
                # either is the first word, or one of the letters is in the grid
                place_word_h.add_precondition(Or(
                    is_first_word,
                    Or(*[
                        Not(Equals(board[r][c + l], none))
                        for l in range(n_letters)
                    ])
                ))
                # Effects
                # if the position is empty we remove letter from hand and place it in the position
                for l in range(n_letters):
                    place_word_h.add_effect(hand, SetRemove(hand, letter_indices[l]), Equals(board[r][c+l], none))
                    place_word_h.add_effect(board[r][c + l], word[l])
                place_word_h.add_effect(is_first_word, False)
                place_word_h.add_effect(hand_full, False)

                scrabble_problem.add_action(place_word_h)
                actions_for_cost.append(place_word_h)


                place_word_v = InstantaneousAction(f'place_word_v_{word}_{'_'.join(map(str, letter_indices))}',
                                                   r=IntType(0, board_size - n_letters),
                                                   c=IntType(0, board_size - 1))
                r = place_word_v.parameter('r')
                c = place_word_v.parameter('c')
                # either the hand is full or the bag exhausted
                place_word_v.add_precondition(Or(hand_full, bag_exhausted))
                # the previous cell should be empty or edge
                place_word_v.add_precondition(Or(Equals(r, 0), Equals(board[r - 1][c], none)))
                # same with the next cell
                place_word_v.add_precondition(
                    Or(Equals(r + n_letters, board_size), Equals(board[r + n_letters][c], none)))
                # at least one position is empty
                place_word_v.add_precondition(Or(*[Equals(board[r + l][c], none) for l in range(n_letters)]))
                # for each position:
                #   either the letter is already there
                #   or the position (and its orthogonal sides) are empty, the letter is in hand
                for l in range(n_letters):
                    place_word_v.add_precondition(
                        Or(
                            Equals(board[r + l][c], word[l]),
                            And(
                                Equals(board[r + l][c], none),
                                Or(Equals(c, 0), Equals(board[r + l][c - 1], none)),
                                Or(Equals(c, board_size - 1), Equals(board[r + l][c + 1], none)),
                                SetMember(hand, letter_indices[l])
                            )
                        )
                    )
                # either is the first word, or one of the letters is in the grid
                place_word_v.add_precondition(Or(
                    is_first_word,
                    Or(*[Not(Equals(board[r + l][c], none)) for l in range(n_letters)])
                ))
                # Effects
                # if the position is empty we remove letter from hand and place it in the position
                for l in range(n_letters):
                    place_word_v.add_effect(hand, SetRemove(hand, letter_indices[l]), Equals(board[r + l][c], none))
                    place_word_v.add_effect(board[r + l][c], word[l])
                place_word_v.add_effect(is_first_word, False)
                place_word_v.add_effect(hand_full, False)


                scrabble_problem.add_action(place_word_v)
                actions_for_cost.append(place_word_v)

        # All bag tiles must have been played.  Every placement action is for
        # a dictionary word, so this does not prescribe one specific board.
        scrabble_problem.add_goal(
            And(bag_exhausted, Equals(SetCardinality(hand), 0))
        )

        costs: Dict = {a: Int(0) if a.name == 'pick_letter' else Int(1)
                       for a in actions_for_cost}
        scrabble_problem.add_quality_metric(MinimizeActionCosts(costs))

        return scrabble_problem


DOMAIN = ScrabbleDomain()
