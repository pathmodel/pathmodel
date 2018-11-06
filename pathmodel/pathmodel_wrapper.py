#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import argparse
import clyngor
import os
import sys

from pathmodel.plotting.path_creation import pathmodel_pathway_picture

# Path to package scripts.
global root
root = __file__.rsplit('/', 1)[0]


def run_pathmodel():
    '''
    Arguments when used with entrypoint as: pathmodel -d data.lp
    '''
    parser = argparse.ArgumentParser(usage="pathmodel -d FILE -p FILE -o FILE")
    parser.add_argument("-d", "--data", dest="input_file", metavar="FILE",
                        help="Input file containing atoms, bonds, reactions and goal.")
    parser.add_argument("-p", "--picture", dest="picture", metavar="FILE",
                        help="Name of the picture result file (optional).")
    parser.add_argument("-o", "--output", dest="output_file", metavar="FILE",
                        help="Name of the result in this file (optional).")
    parser.add_argument("-i", "--intermediate", dest="intermediate", action='store_true',
                        help="Add if you want the input file given to pathmodel after MZ Computation and Reaction Creation (optional).")

    parser_args = parser.parse_args()

    # Print help and exit if no arguments.
    argument_number = len(sys.argv[1:])
    if argument_number == 0:
        parser.print_help()
        parser.exit()

    input_file = parser_args.input_file
    picture_name = parser_args.picture
    output_file = parser_args.output_file
    intermediate = parser_args.intermediate

    pathmodel_analysis(input_file, picture_name, output_file, intermediate)


def mz_computation(input_file):
    '''
    Compute MZ for all known molecules and MZ for reaction.
    Return the result as a string.
    Use next because for these analysis, we expect only one answer.
    '''
    print('~~~~~Creation of MZ~~~~~')
    # use_clingo_module=False because of https://github.com/Aluriak/clyngor/issues/7
    mz_solver = clyngor.solve([input_file, root + '/asp/MZComputation.lp'], use_clingo_module=False)
    mz_result = '\n'.join([atom+'. ' for atom in next(mz_solver.parse_args.atoms_as_string.int_not_parsed.sorted)])

    return mz_result


def reaction_creation(input_file):
    '''
    Detect reaction sites by comparing molecules implied in a reaction.
    Return the result as a string.
    '''
    print('~~~~~Creation of Reaction~~~~~')
    reaction_solver = clyngor.solve([input_file, root + '/asp/ReactionSiteExtraction.lp'], use_clingo_module=False)
    reaction_result = '\n'.join([atom+'. ' for atom in next(reaction_solver.parse_args.atoms_as_string.int_not_parsed.sorted)])

    return reaction_result


def pathmodel_inference(input_string):
    '''
    Infer reactions and metabolites from known reactions and metabolites.
    '''
    print('~~~~~Inference of reactions and metabolites~~~~~')
    pathmodel_solver = clyngor.solve(inline=input_string, files=root + '/asp/PathModel.lp', use_clingo_module=False)

    # Take the best model.
    best_model = None
    for best_model in pathmodel_solver.parse_args.atoms_as_string.int_not_parsed.sorted:
        pass
    pathmodel_result = '\n'.join([atom+'.' for atom in best_model])

    return pathmodel_result


def pathmodel_analysis(input_file, picture_name=None, output_file=None, intermediate=None):
    mz_result = mz_computation(input_file)

    reaction_result = reaction_creation(input_file)

    # Merge input files + result from MZ prediction and reaction creation into a string, which will be the input file for PathModel.
    input_string = open(input_file, 'r').read() + '\n' + mz_result + '\n' + reaction_result

    if intermediate:
        input_pathmodel_file = open("data_pathmodel.lp", "w")
        input_pathmodel_file.write(input_string)
        input_pathmodel_file.write('\n')
        input_pathmodel_file.close()

    pathmodel_result = pathmodel_inference(input_string)

    if output_file:
        print('~~~~~Creating result file~~~~~')
        # Write input in a file.
        resultfile = open(output_file, "w")
        resultfile.write(pathmodel_result)
        resultfile.write('\n')
        resultfile.close()

    if picture_name:
        pathmodel_pathway_picture(pathmodel_result, picture_name)

    return pathmodel_result


if __name__ == '__main__':
    run_pathmodel()
