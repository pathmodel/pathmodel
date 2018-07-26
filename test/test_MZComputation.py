# -*- coding: utf-8 -*-

import pytest
import clyngor
import sys

def MZ_computation():
	answer = clyngor.solve(['data-test-computation.lp', '../pathmodel/asp/MZComputation.lp'])
	result = next(answer.parse_args.atoms_as_string.sorted)
	return result

def test_MZcomputation():
	result = MZ_computation()

	result_expected = ('moleculeComposition("molecule_1",4,8,0,0,0)',
						'moleculeMZ("molecule_1",561020)', 'moleculeNbAtoms("molecule_1",12)',
						'moleculeNbAtoms("molecule_1",4)', 'numberTotalBonds("molecule_1",4)')

	assert result == result_expected
