from typing import Optional, Tuple, TYPE_CHECKING

if TYPE_CHECKING:
    from unified_planning.model.fnode import FNode
    from unified_planning.model.types import Type


def _int_type_bounds(t: "Type") -> "Optional[Tuple[int, int]]":
    """Return (lower, upper) if 't' is a bounded int type, else None."""
    if t.is_int_type() and t.lower_bound is not None and t.upper_bound is not None:
        return (t.lower_bound, t.upper_bound)
    return None


def _index_interval(index: "FNode") -> "Optional[Tuple[int, int]]":
    """[XTS check] Smallest (lower, upper) range that can proven for an array
    index or set element, or None when it can't.

    int constants, range/forall variables (via their type
    bounds) and +, -, * over those.
    """
    # A literal is the single-point range [v, v].
    if index.is_int_constant():
        return (index.constant_value(), index.constant_value())

    # A range or forall variable is bounded by its declared int type.
    # forall vars parse as VARIABLE_EXP, range vars as RANGE_VARIABLE_EXP.
    # both are IntType, so the bounds are read the same way.
    if index.is_range_variable_exp():
        return _int_type_bounds(index.range_variable().type)
    if index.is_variable_exp():
        return _int_type_bounds(index.variable().type)

    # Arithmetic: combine the children's ranges; if any child is unbounded, so
    # is the result.
    if index.is_plus():
        lo, hi = 0, 0
        for child in index.args:
            child_range = _index_interval(child)
            if child_range is None:
                return None
            lo += child_range[0]
            hi += child_range[1]
        return (lo, hi)

    if index.is_minus() and len(index.args) == 2:
        a = _index_interval(index.arg(0))
        b = _index_interval(index.arg(1))
        if a is not None and b is not None:
            return (a[0] - b[1], a[1] - b[0])

    if index.is_times() and len(index.args) == 2:
        a = _index_interval(index.arg(0))
        b = _index_interval(index.arg(1))
        if a is not None and b is not None:
            # Either operand may be negative, so the extreme values can land at
            # any corner: take the min/max over all four endpoint products.
            corners = [a[0] * b[0], a[0] * b[1], a[1] * b[0], a[1] * b[1]]
            return (min(corners), max(corners))

    # Action parameters, unbounded types, and anything else: unknown.
    return None