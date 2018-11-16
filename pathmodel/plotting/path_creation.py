#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Script to create a pathway picture showing inference results of Pathmodel analysis.
"""

import argparse
import clyngor
import networkx as nx
# import for using the script in docker.
import matplotlib; matplotlib.use('svg')
import matplotlib.pyplot as plt
import os.path

from networkx.drawing.nx_agraph import graphviz_layout


def run_pathway_creation():
    parser = argparse.ArgumentParser(usage="python path_creation.py -f FILE -o STRING")
    parser.add_argument("-f", "--file", dest="asp_file", metavar="FILE", help="File containing result data from Pathmodel analysis.")
    parser.add_argument("-o", "--output", dest="output_name", metavar="STRING", help="Name of the output.")

    parser_args = parser.parse_args()

    with open(parser_args.asp_file, 'r') as input_file:
        asp_code = input_file.read()
    picture_name = parser_args.output_name

    pathmodel_pathway_picture(asp_code, picture_name)


def pathmodel_pathway_picture(asp_code, picture_name):
    DG = nx.DiGraph()

    known_compounds = []
    inferred_compounds = []

    known_reactions = []
    inferred_reactions = []

    # use_clingo_module=false because of https://github.com/Aluriak/clyngor/issues/7
    for answer in clyngor.ASP(asp_code, use_clingo_module=False).parse_args.by_predicate.discard_quotes:
        for predicate in answer:
            for atom in answer[predicate]:
                reaction = atom[0]
                reactant = atom[1]
                product = atom[2]
                if predicate == "reaction":
                    known_compounds.append(reactant)
                    known_compounds.append(product)

                    known_reactions.append((reactant, product))
                    DG.add_edge(reactant, product, label=reaction)
                elif predicate == "newreaction":
                    inferred_compounds.append(reactant)
                    inferred_compounds.append(product)

                    inferred_reactions.append((reactant, product))
                    DG.add_edge(reactant, product, label=reaction)
    plt.figure(figsize=(25, 25))

    nx.draw_networkx_nodes(DG,
                           graphviz_layout(DG, prog='neato'),
                           nodelist=known_compounds,
                           node_color="green",
                           node_size=3000,
                           node_shape='s',
                           alpha=0.2)
    nx.draw_networkx_nodes(DG,
                           graphviz_layout(DG, prog='neato'),
                           nodelist=inferred_compounds,
                           node_color="blue",
                           node_size=2000,
                           node_shape='s',
                           alpha=0.2)

    nx.draw_networkx_edges(DG,
                           graphviz_layout(DG, prog='neato'),
                           edgelist=known_reactions,
                           edge_color="green",
                           alpha=0.5,
                           width=2.0,
                           arrow=True,
                           arrowstyle='->',
                           arrowsize=14)
    nx.draw_networkx_edges(DG,
                           graphviz_layout(DG, prog='neato'),
                           edgelist=inferred_reactions,
                           edge_color="blue",
                           alpha=0.5,
                           width=2.0,
                           arrow=True,
                           arrowstyle='->',
                           arrowsize=14)
    nx.draw_networkx_labels(DG,
                            graphviz_layout(DG, prog='neato'),
                            font_size=15)

    ax = plt.gca()
    ax.set_axis_off()

    extension = os.path.splitext(picture_name)[1].strip('.')
    plt.savefig(picture_name, dpi=144, format=extension, frameon=True)


if __name__ == '__main__':
    run_pathway_creation()
