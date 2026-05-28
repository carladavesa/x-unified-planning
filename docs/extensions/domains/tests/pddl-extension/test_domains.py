"""
Parametrised pytest suite: parse → compile → solve every test domain in
docs/extensions/domains/tests/pddl-extension/<domain>/{domain,instance}.pddl

Pipeline tags (from compilation_solving.COMPILATION_PIPELINES):
  uti   = INT_PARAMETER_ACTIONS_REMOVING → ARRAYS_REMOVING
          → INTEGERS_REMOVING → USERTYPE_FLUENTS_REMOVING
  sc    = INT_PARAMETER_ACTIONS_REMOVING → SETS_REMOVING
          → COUNT_REMOVING → USERTYPE_FLUENTS_REMOVING
  sci   = INT_PARAMETER_ACTIONS_REMOVING → SETS_REMOVING
          → COUNT_INT_REMOVING → INTEGERS_REMOVING → USERTYPE_FLUENTS_REMOVING
  iasi  = INT_PARAMETER_ACTIONS_REMOVING → ARRAYS_REMOVING
          → SETS_REMOVING → INTEGERS_REMOVING → USERTYPE_FLUENTS_REMOVING
  c     = INT_PARAMETER_ACTIONS_REMOVING → ARRAYS_REMOVING → COUNT_REMOVING
"""
import os
import sys

import pytest

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..', '..', '..', '..'))
sys.path.insert(0, ROOT)

from unified_planning.io.up_pddl_reader import UPPDDLReader
from unified_planning.shortcuts import OneshotPlanner, get_environment
import docs.extensions.domains.compilation_solving as cs

TESTS_DIR = os.path.dirname(os.path.abspath(__file__))
SOLVER = 'fast-downward'
TIMEOUT = 120  # seconds per domain

# Maps each domain subdirectory name → compilation pipeline key.
#
# uti   : arrays + bounded-integers (no sets)
# sc    : sets of plain objects (no bounded-integer element types)
# sci   : sets whose element type is a bounded integer, or sets + bounded fluents
# iasi  : arrays + bounded-integers + sets (any element type)
# c     : count fluent only (no arrays, no bounded integers)
DOMAIN_PIPELINES: dict[str, str] = {
    # ── arrays + bounded-integers ─────────────────────────────────────────
    'base':               'uti',
    '2d':                 'uti',
    '2d_array_obj':       'uti',
    '2d_whole_goal':      'uti',
    'array_obj':          'uti',
    'multi_array':        'uti',
    'multi_2d_array':     'uti',
    'scalar_from_array':  'uti',
    'fluent_index':       'uti',
    'fluent_index_2d':    'uti',
    'conditional_array':  'uti',
    'exists_range':       'uti',
    'forall_array_body':  'uti',
    'forall_param_range': 'uti',
    'forall_const_range': 'uti',
    # ── bounded-integers only (ARRAYS_REMOVING is a no-op) ────────────────
    'bounded':            'uti',
    'bounded_params':     'uti',
    'pancake_bounded':    'uti',
    # ── sets of plain object types ────────────────────────────────────────
    'sets':               'sc',
    'sets2':              'sc',
    'sets_singleton':     'sc',
    'conditional_set':    'sc',
    'setmk_effect':       'sc',
    # ── sets whose element type (or a co-fluent) is a bounded integer ─────
    'sets3':              'sci',
    'sets4':              'sci',
    'sets_const':         'sci',
    'sets_nested':        'sci',
    'add_arithmetic':     'sci',
    # ── arrays + bounded-integers + sets ─────────────────────────────────
    '1d_array_objsets':   'iasi',
    '2d_array_intsets':   'iasi',
    '2d_array_objsets':   'iasi',
    'array_intsets':      'iasi',
    'read_as_member':     'iasi',
    'setops_on_2d_reads': 'iasi',
    'setops_on_reads':    'iasi',
    'write_setexpr':      'iasi',
    # ── count fluent (becomes classical after COUNT_REMOVING) ─────────────
    'count':              'c',
}


@pytest.mark.parametrize('domain_name,pipeline', sorted(DOMAIN_PIPELINES.items()))
def test_compile_and_solve(domain_name: str, pipeline: str) -> None:
    """Parse, compile, and solve a single test domain; assert a plan is found."""
    get_environment().credits_stream = None

    domain_file   = os.path.join(TESTS_DIR, domain_name, 'domain.pddl')
    instance_file = os.path.join(TESTS_DIR, domain_name, 'instance.pddl')

    reader  = UPPDDLReader()
    problem = reader.parse_problem(domain_file, instance_file)

    compiled, comp_results, _ = cs.compile_problem(problem, pipeline, timeout=TIMEOUT)

    with OneshotPlanner(name=SOLVER) as planner:
        result = planner.solve(compiled)

    assert result.plan is not None, (
        f'[{domain_name}] No plan found (status: {result.status})'
    )
