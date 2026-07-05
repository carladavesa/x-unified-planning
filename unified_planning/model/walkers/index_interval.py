from typing import Optional, Tuple, TYPE_CHECKING

if TYPE_CHECKING:
    from unified_planning.model.fnode import FNode


def _index_interval(index: "FNode") -> "Optional[Tuple[int, int]]":
    """[XTS check #4] Conservative interval for an array index or set-element FNode.
    Returns (lo, hi) if the range can be bounded statically, None otherwise.
    Handles INT_CONSTANT, RANGE_VARIABLE_EXP, VARIABLE_EXP (PDDL forall range
    vars), and PLUS/MINUS/TIMES combinations.
    Action parameters (PARAM_EXP) are treated as unbounded (return None) to
    match the C++ check_index behaviour.
    """
    if index.is_int_constant():
        v = index.constant_value()
        return (v, v)
    if index.is_range_variable_exp():
        t = index.range_variable().type
        if t.is_int_type() and t.lower_bound is not None and t.upper_bound is not None:
            return (t.lower_bound, t.upper_bound)
        return None
    # PDDL forall range variables are parsed as VARIABLE_EXP (not RANGE_VARIABLE_EXP).
    # Both Variable and RangeVariable use the same IntType, so the bounds check is identical.
    if index.is_variable_exp():
        t = index.variable().type
        if t.is_int_type() and t.lower_bound is not None and t.upper_bound is not None:
            return (t.lower_bound, t.upper_bound)
        return None
    if index.is_plus():
        lo, hi = 0, 0
        for child in index.args:
            iv = _index_interval(child)
            if iv is None:
                return None
            lo += iv[0]
            hi += iv[1]
        return (lo, hi)
    if index.is_minus():
        if len(index.args) == 2:
            a = _index_interval(index.arg(0))
            b = _index_interval(index.arg(1))
            if a is not None and b is not None:
                return (a[0] - b[1], a[1] - b[0])
        return None
    if index.is_times():
        if len(index.args) == 2:
            a = _index_interval(index.arg(0))
            b = _index_interval(index.arg(1))
            if a is not None and b is not None:
                corners = [a[0]*b[0], a[0]*b[1], a[1]*b[0], a[1]*b[1]]
                return (min(corners), max(corners))
        return None
    return None