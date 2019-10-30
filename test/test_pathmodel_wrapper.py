# -*- coding: utf-8 -*-

import shutil
import pathmodel

def test_pathmodel():
	resultfile_content = pathmodel.pathmodel_analysis('test/pathmodel_test_data.lp', 'test_output')

	result_expected = """newatom("Prediction_921341_saturation",1,carb).
newatom("Prediction_921341_saturation",2,carb).
newatom("Prediction_921341_saturation",3,carb).
newatom("Prediction_921341_saturation",4,carb).
newatom("Prediction_921341_saturation",5,carb).
newatom("Prediction_921341_saturation",6,carb).
newatom("Prediction_921341_saturation",7,carb).
newbond("Prediction_921341_saturation",double,2,4).
newbond("Prediction_921341_saturation",double,3,6).
newbond("Prediction_921341_saturation",single,1,2).
newbond("Prediction_921341_saturation",single,1,3).
newbond("Prediction_921341_saturation",single,1,6).
newbond("Prediction_921341_saturation",single,1,7).
newbond("Prediction_921341_saturation",single,2,3).
newbond("Prediction_921341_saturation",single,5,6).
newreaction(saturation,"molecule_3","molecule_4").
newreaction(saturation,"molecule_5","Prediction_921341_saturation").
reaction(saturation,"molecule_1","molecule_2").
reaction(saturation,"molecule_3","molecule_4").
reaction(saturation,"molecule_5","Prediction_921341_saturation")."""
	shutil.rmtree('test_output')
	assert resultfile_content == result_expected
