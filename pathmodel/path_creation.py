#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import clyngor
import networkx as nx
import matplotlib.pyplot as plt

from networkx.drawing.nx_agraph import graphviz_layout

def pathmodel_pathway_picture(asp_path):
    asp_file = open(asp_path, 'r')
    asp_code = asp_file.read()

    DG = nx.DiGraph()

    kown_reactions = []
    inferred_reactions = []
    for answer in clyngor.ASP(asp_code).parse_args.by_predicate:
        for predicate in answer:
            for atom in answer[predicate]:
                reaction = atom[0].strip('"')
                reactant = atom[1].strip('"')
                product = atom[2].strip('"')
                if predicate == "reaction":
                    kown_reactions.append(reactant)
                    kown_reactions.append(product)
                else:
                    inferred_reactions.append(reactant)
                    inferred_reactions.append(product)
                DG.add_edge(reactant, product, label=reaction)
    plt.figure(figsize=(25,25))


    nx.draw_networkx_nodes(DG,
                           graphviz_layout(DG, prog='neato'),
                           nodelist=kown_reactions,
                           node_color="green",
                           node_size=3000,
                           node_shape='s',
                       alpha=0.2)
    nx.draw_networkx_nodes(DG,
                           graphviz_layout(DG, prog='neato'),
                           nodelist=inferred_reactions,
                           node_color="blue",
                           node_size=2000,
                           node_shape='s',
                       alpha=0.2)
    nx.draw_networkx_edges(DG,
                           graphviz_layout(DG, prog='neato'),
                           edge_color="black",
                           alpha=0.5,
                           width=2.0,
                           arrow=True)
    nx.draw_networkx_labels(DG,
                           graphviz_layout(DG, prog='neato'),
                           font_size=15)

    ax = plt.gca()
    ax.set_axis_off()
    plt.savefig("test.png", dpi=144, format='png', frameon=True)

    asp_file.close()