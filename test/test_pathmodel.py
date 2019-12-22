# -*- coding: utf-8 -*-

import shutil
import pathmodel

def test_MZcomputation():
	result = pathmodel.mz_computation('test/pathmodel_test_data.lp')

	result_expected = """domain("molecule_1",triangle).
domain("molecule_2",triangle).
domain("molecule_3",triangle).
domain("molecule_4",triangle).
domain("molecule_5",triangle).
moleculeComposition("molecule_1",4,8,0,0,0).
moleculeComposition("molecule_2",4,6,0,0,0).
moleculeComposition("molecule_3",6,10,0,0,0).
moleculeComposition("molecule_4",6,8,0,0,0).
moleculeComposition("molecule_5",7,10,0,0,0).
moleculeMZ("molecule_1",561020).
moleculeMZ("molecule_2",540872).
moleculeMZ("molecule_3",821382).
moleculeMZ("molecule_4",801234).
moleculeMZ("molecule_5",941489).
moleculeNbAtoms("molecule_1",12).
moleculeNbAtoms("molecule_1",4).
moleculeNbAtoms("molecule_2",10).
moleculeNbAtoms("molecule_2",4).
moleculeNbAtoms("molecule_3",16).
moleculeNbAtoms("molecule_3",6).
moleculeNbAtoms("molecule_4",14).
moleculeNbAtoms("molecule_4",6).
moleculeNbAtoms("molecule_5",17).
moleculeNbAtoms("molecule_5",7).
numberTotalBonds("molecule_1",4).
numberTotalBonds("molecule_2",4).
numberTotalBonds("molecule_3",7).
numberTotalBonds("molecule_4",7).
numberTotalBonds("molecule_5",8).
reactionMZ(reduction,20148)."""

	assert result == result_expected

def test_transformation():
	pathmodel.check_folder('test_output')
	result = pathmodel.reaction_creation('test/pathmodel_test_data.lp', 'test_output')

	result_expected = """diffBondAfterReaction(reduction,double,2,4).
diffBondBeforeReaction(reduction,single,2,4).
siteAfterReaction(reduction,"molecule_2").
siteAfterReaction(reduction,"molecule_4").
siteBeforeReaction(reduction,"molecule_1").
siteBeforeReaction(reduction,"molecule_3").
siteBeforeReaction(reduction,"molecule_5")."""
	shutil.rmtree('test_output')
	assert result == result_expected

def test_pathmodel():
	resultfile_content = pathmodel.pathmodel_analysis('test/pathmodel_test_data.lp', 'test_output')

	result_expected = """newreaction(reduction,"molecule_3","molecule_4").
newreaction(reduction,"molecule_5","Prediction_921341_reduction").
predictatom("Prediction_921341_reduction",1,carb).
predictatom("Prediction_921341_reduction",2,carb).
predictatom("Prediction_921341_reduction",3,carb).
predictatom("Prediction_921341_reduction",4,carb).
predictatom("Prediction_921341_reduction",5,carb).
predictatom("Prediction_921341_reduction",6,carb).
predictatom("Prediction_921341_reduction",7,carb).
predictbond("Prediction_921341_reduction",double,2,4).
predictbond("Prediction_921341_reduction",double,3,6).
predictbond("Prediction_921341_reduction",single,1,2).
predictbond("Prediction_921341_reduction",single,1,3).
predictbond("Prediction_921341_reduction",single,1,6).
predictbond("Prediction_921341_reduction",single,1,7).
predictbond("Prediction_921341_reduction",single,2,3).
predictbond("Prediction_921341_reduction",single,5,6).
reaction(reduction,"molecule_1","molecule_2").
reaction(reduction,"molecule_3","molecule_4").
reaction(reduction,"molecule_5","Prediction_921341_reduction")."""
	shutil.rmtree('test_output')
	assert resultfile_content == result_expected