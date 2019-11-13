# -*- coding: utf-8 -*-

import shutil
import pathmodel

def test_pathmodel():
	resultfile_content = pathmodel.pathmodel_analysis('test/pathmodel_test_data.lp', 'test_output')

	result_expected = """newatom("Prediction_921341_reduction",1,carb).
newatom("Prediction_921341_reduction",2,carb).
newatom("Prediction_921341_reduction",3,carb).
newatom("Prediction_921341_reduction",4,carb).
newatom("Prediction_921341_reduction",5,carb).
newatom("Prediction_921341_reduction",6,carb).
newatom("Prediction_921341_reduction",7,carb).
newbond("Prediction_921341_reduction",double,2,4).
newbond("Prediction_921341_reduction",double,3,6).
newbond("Prediction_921341_reduction",single,1,2).
newbond("Prediction_921341_reduction",single,1,3).
newbond("Prediction_921341_reduction",single,1,6).
newbond("Prediction_921341_reduction",single,1,7).
newbond("Prediction_921341_reduction",single,2,3).
newbond("Prediction_921341_reduction",single,5,6).
newreaction(reduction,"molecule_3","molecule_4").
newreaction(reduction,"molecule_5","Prediction_921341_reduction").
reaction(reduction,"molecule_1","molecule_2").
reaction(reduction,"molecule_3","molecule_4").
reaction(reduction,"molecule_5","Prediction_921341_reduction")."""
	shutil.rmtree('test_output')
	assert resultfile_content == result_expected
