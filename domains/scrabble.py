"""scrabble planning domain.

This module implements the scrabble benchmark as a `Domain`.
It is intended to be executed via `run.py`.

Example:
  python run.py --domain scrabble --compilation up --solving fast-downward
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
    SetAdd, LT, Int, Exists, Implies, GE, Count, Forall
)

from domains.base import Domain


ScrabbleInstance = tuple[int, int, list[tuple[str, ...]], list[str]]


def _chain_words(length: int, count: int) -> list[tuple[str, ...]]:
    """Words in which each word overlaps on the last letter of the previous one."""
    alphabet = tuple("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    return [
        tuple(alphabet[(word_index * (length - 1) + offset) % len(alphabet)]
              for offset in range(length))
        for word_index in range(count)
    ]


def _chain_instance(board_size: int, word_length: int, word_count: int) -> ScrabbleInstance:
    words = _chain_words(word_length, word_count)
    # First word consumes all its letters; later words overlap on their first
    # letter, so only their remaining letters need to appear in the bag.
    bag = [*words[0], *(letter for word in words[1:] for letter in word[1:])]
    return board_size, word_length, words, bag


# (board size, hand capacity, dictionary words, ordered bag)
INSTANCES: Dict[str, ScrabbleInstance] = {
    "scr_01": _chain_instance(5, 3, 2),
    "scr_02": _chain_instance(7, 3, 2),
    "scr_03": _chain_instance(9, 3, 2),
    "scr_04": _chain_instance(7, 4, 2),
    "scr_05": _chain_instance(9, 5, 2),
    "scr_06": _chain_instance(6, 4, 1),
    "scr_07": _chain_instance(8, 4, 3),
    "scr_08": _chain_instance(10, 4, 5),
    "scr_09": _chain_instance(13, 5, 5),
    "scr_10": _chain_instance(16, 6, 6),
    # Same size as scr_07, but repeated letters yield many more bag-index
    # combinations and therefore many more generated actions.
    "scr_repeated": (
        8,
        4,
        [("A", "B", "C", "A"), ("A", "D", "E", "F"), ("F", "G", "H", "A")],
        ["A", "B", "C", "A", "D", "E", "F", "G", "H", "A"],
    ),
}

class ScrabbleDomain(Domain):
    def __init__(self) -> None:
        self._instances = INSTANCES

    def list_instances(self) -> dict[str, dict[str, int]]:
        return {
            name: {
                "board_size": board_size,
                "hand_size": hand_size,
                "word_length": len(words[0]),
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
        n_letters = len(dictionary_symbols[0])
        if any(len(word) != n_letters for word in dictionary_symbols):
            raise ValueError("All dictionary words in an instance must have the same length.")

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
                                SetMember(letter_indices[l], hand)
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
                    place_word_h.add_effect(board[r][c + l], word[l], Equals(board[r][c + l], none))
                place_word_h.add_effect(is_first_word, False, is_first_word)
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
                                SetMember(letter_indices[l], hand)
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
                    place_word_v.add_effect(board[r + l][c], word[l], Equals(board[r + l][c], none))
                place_word_v.add_effect(is_first_word, False, is_first_word)
                place_word_v.add_effect(hand_full, False)


                scrabble_problem.add_action(place_word_v)
                actions_for_cost.append(place_word_v)

        # All bag tiles must have been played.  Every placement action is for
        # a dictionary word, so this does not prescribe one specific board.
        scrabble_problem.add_goal(
            And(bag_exhausted, Equals(SetCardinality(hand), 0))
        )

        costs: Dict = {a: Int(1) if a.name == 'pick_letter' else Int(0)
                       for a in actions_for_cost}
        scrabble_problem.add_quality_metric(MinimizeActionCosts(costs))

        return scrabble_problem


DOMAIN = ScrabbleDomain()
