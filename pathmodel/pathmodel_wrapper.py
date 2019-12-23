#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import clyngor
import csv
import os
import time

# Path to package scripts.
global root
root = __file__.rsplit('/', 1)[0]

def check_folder(folder_in):
    if not os.path.isdir(folder_in):
        try:
            os.makedirs(folder_in)
        except OSError:
            raise OSError('Can not create folder: ' + folder_in)


def mz_computation(input_file):
    '''
    Compute MZ for all known molecules and MZ for reaction.
    Return the result as a string.
    Use next because for these analysis, we expect only one answer.
    '''
    print('~~~~~Creation of MZ~~~~~')
    mz_solver = clyngor.solve([input_file, root + '/asp/MZComputation.lp'], use_clingo_module=False)
    mz_result = '\n'.join([atom+'.' for atom in next(mz_solver.parse_args.atoms_as_string.int_not_parsed.sorted)])

    return mz_result


def reaction_creation(input_file, output_folder):
    '''
    Detect reaction sites by comparing molecules implied in a reaction.
    Return the result as a string.
    '''
    print('~~~~~Creation of Reaction~~~~~')
    reaction_solver = clyngor.solve([input_file, root + '/asp/ReactionSiteExtraction.lp'], use_clingo_module=False)
    reaction_results = []
    transformation_reactants = {}
    transformation_products = {}
    reactions = []
    for atom in next(reaction_solver.parse_args.int_not_parsed.sorted):
        reaction_results.append(atom[0] + '(' + ','.join(atom[1]) + ')')
        if 'diff' in atom[0]:
            reaction_id = atom[1][0]
            substructures = atom[1][1:]
            reactions.append(reaction_id)
            if 'Before' in atom[0]:
                if reaction_id not in transformation_reactants:
                    transformation_reactants[reaction_id] = [substructures]
                else:
                    transformation_reactants[reaction_id].append([substructures])
            elif 'After' in atom[0]:
                if reaction_id not in transformation_products:
                    transformation_products[reaction_id] = [substructures]
                else:
                    transformation_products[reaction_id].append([substructures])

    reactions = set(reactions)
    with open(output_folder + '/' + 'pathmodel_data_transformations.tsv', 'w') as transformation_file:
        csvwriter = csv.writer(transformation_file, delimiter = '\t')
        csvwriter.writerow(['reaction_id', 'reactant_sbustructure', 'product_substructure'])
        for reaction in reactions:
            if reaction in transformation_reactants:
                reactant = transformation_reactants[reaction]
            else:
                reactant = []
            if reaction in transformation_products:
                product = transformation_products[reaction]
            else:
                product = []
            csvwriter.writerow([reaction, reactant, product])


    reaction_result = '\n'.join([atom+'.' for atom in reaction_results])

    return reaction_result


def pathmodel_inference(input_string, output_folder):
    '''
    Infer reactions and metabolites from known reactions and metabolites.
    '''
    print('~~~~~Inference of reactions and metabolites~~~~~')
    pathmodel_solver = clyngor.solve(inline=input_string, files=root + '/asp/PathModel.lp', use_clingo_module=False)

    # Take the best model.
    best_model = None
    best_model = []
    pathways = {}
    reactions = {}

    for atom in next(pathmodel_solver.parse_args.int_not_parsed.sorted):
        if 'inferred' in atom[0]:
            infer_step = int(atom[1][1])
            reactant = atom[1][0][1][0]
            product = atom[1][0][1][1]
            if infer_step not in pathways:
                pathways[infer_step] = [(reactant, product)]
            else:
                pathways[infer_step].append((reactant, product))
        else:
            best_model.append(atom[0] + '(' + ','.join(atom[1]) + ')')
            if 'newreaction' in atom[0]:
                reactions[atom[1][1:]] = atom[1][0]

    pathmodel_result = '\n'.join([atom+'.' for atom in best_model])

    already_inferreds = []
    with open(output_folder + '/' + 'pathmodel_incremental_inference.tsv', 'w') as outfile:
        csvwriter = csv.writer(outfile, delimiter='\t')
        csvwriter.writerow(["infer_step", "new_reaction", "reactant", "product"])
        for infer_step in sorted(list(pathways.keys())):
            for reaction in pathways[infer_step]:
                if reaction in reactions and reaction not in already_inferreds:
                    csvwriter.writerow([infer_step, reactions[reaction], *reaction])
                    already_inferreds.append(reaction)

    return pathmodel_result


def pathmodel_analysis(input_file, output_folder):
    check_folder(output_folder)

    mz_result = mz_computation(input_file)

    reaction_result = reaction_creation(input_file, output_folder)

    # Merge input files + result from MZ prediction and reaction creation into a string, which will be the input file for PathModel.
    input_string = open(input_file, 'r').read() + '\n' + mz_result + '\n' + reaction_result

    with open(output_folder + '/' + 'data_pathmodel.lp', 'w') as intermediate_file:
        intermediate_file.write(input_string)
        intermediate_file.write('\n')

    pathmodel_result = pathmodel_inference(input_string, output_folder)

    output_lp = output_folder + '/' + 'pathmodel_output.lp'

    print('~~~~~Creating result file~~~~~')
    # Write input in a file.
    with open(output_lp, "w") as resultfile:
        resultfile.write(pathmodel_result)
        resultfile.write('\n')

    return pathmodel_result
