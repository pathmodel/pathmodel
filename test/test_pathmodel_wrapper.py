# -*- coding: utf-8 -*-

import pathmodel

def test_pathmodel():
	resultfile_content = pathmodel.pathmodel_analysis('test_data/pathmodel_test_data.lp', picture_name=None, output_file=None)
	print(resultfile_content)
	result_expected = """newreaction(saturation,"molecule_3","molecule_4").\nnewreaction(saturation,"molecule_5","Prediction_78379269").\nreaction(saturation,"molecule_1","molecule_2").\nreaction(saturation,"molecule_3","molecule_4").\nreaction(saturation,"molecule_5","Prediction_78379269")."""
	print(result_expected)
	assert resultfile_content == result_expected
