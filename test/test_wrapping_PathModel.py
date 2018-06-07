# -*- coding: utf-8 -*-

import pytest
import clyngor
import sys

def pathmodel_analysis():
	next(clyngor.solve(['data.lp', 'ReactionCreation.lp']), None)

	test_result = clyngor.solve(['data_result.lp', 'PathModel.lp'])

	result = clyngor.solve(['data_result.lp', 'PathModel.lp'])

	resultfile = open("result.lp", "w")
	optimization_scores = []

	# Parse result of classification
	# Check the best optimization.
	# In clyngor with optimization answer are set with two datas: first one is the model the second is the optimization.
	for answer in test_result.with_optimization:
		try:
			optimization_score = answer[1][1]
			optimization_scores.append(optimization_score)
		except:
			break

	# Write the atoms from the model with the best optimization.
	if optimization_scores:
		best_score = max(optimization_scores)

	for answer in sorted(result.parse_args.atoms_as_string.int_not_parsed.with_optimization):
		try:
			if answer[1][1] == best_score:
				for atom in answer[0]:
					resultfile.write(atom)
					resultfile.write('.\n')
		except:
			for atom in answer[0]:
				resultfile.write(atom)
				resultfile.write('.\n')

	resultfile.close()

def test_pathmodel():
	pathmodel_analysis()
	resultfile_content = open("result.lp", "r").read()
	print(resultfile_content)
	result_expected = """newreaction(saturation,"molecule_5","Prediction_78379269").\nnewreaction(saturation,"molecule_3","molecule_4").\n"""
	print(result_expected)
	assert resultfile_content == result_expected
