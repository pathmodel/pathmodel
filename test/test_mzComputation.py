# -*- coding: utf-8 -*-

import pathmodel

def test_MZcomputation():
	result = pathmodel.mz_computation('test_data/mz_computation.lp')

	result_expected = 'moleculeComposition("molecule_1",4,8,0,0,0). \nmoleculeMZ("molecule_1",561020). \nmoleculeNbAtoms("molecule_1",12). \nmoleculeNbAtoms("molecule_1",4). \nnumberTotalBonds("molecule_1",4). '

	assert result == result_expected
