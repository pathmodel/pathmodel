PathModel
=========

PathModel is a tool to infer reaction between metabolites and new metabolites.

There is no guarantee that this script will work, it is a Work In Progress in early state.

.. contents:: Table of contents
   :backlinks: top
   :local:

Installation
------------

Requirements
~~~~~~~~~~~~

You must have an environment where Clingo is installed. Clingo can be obtained `here <https://github.com/potassco/clingo>`__.
Also Clingo must be installed in an environment with Python compatibilty (a good way to have it is with `conda <https://anaconda.org/potassco/clingo>`__).
Python environment for Clingo must be Python 3, if it is Python 2 the script will crash.

For the wrapping script, `Python3 <https://www.python.org/>`__ and `clyngor package <https://github.com/Aluriak/clyngor>`__ are needed.

To create pathway picture, the script uses `networkx <https://networkx.github.io/>`__ and `matplotlib packages <https://matplotlib.org/>`__.

To create molecule picture, Pathmodel uses the `rdkit package <https://github.com/rdkit/rdkit/>`__.

Using git
~~~~~~~~~

At this moment, the package can be installed only using python setup. But when the git will become public, a pip package would be created.

.. code:: sh

    git clone https://gitlab.inria.fr/abelcour/PathModel.git

    cd PathModel

    python setup.py install

Using pip
~~~~~~~~~

Incoming and will be like:

.. code:: sh

	pip install pathmodel

Description
-----------

PathModel is developed in `ASP <https://en.wikipedia.org/wiki/Answer_set_programming>`__. It is divided in two scripts.

The first one, `ReactionSiteExtraction.lp  <https://gitlab.inria.fr/abelcour/PathModel/blob/master/pathmodel/asp/ReactionSiteExtraction.lp>`__ creates reaction site.

When a reaction is described between two molecules, the script will compare atoms and bonds of the two molecules of the reaction and will extract a reaction site before the reaction (composed of atoms and bonds that are present in the reactant but absent in the product) and a reaction site after the reaction (composed of atoms and bonds present in the product but absent in the reactant).

ReactionSiteExtraction produces two sites for each reaction (one before and one after the reaction).
These sites will be used by the second script: `PathModel.lp <https://gitlab.inria.fr/abelcour/PathModel/blob/master/pathmodel/asp/PathModel.lpp>`__.

PathModel will use two inference methods: one creating new metabolites and one infering a reaction between two metabolites.

Input data
~~~~~~~~~~

Molecules are modelled with atoms (hydrogen excluded) and bonds (single and double).

.. code:: sh

	atom("Molecule1",1,carb). atom("Molecule1",2,carb).
    bond("Molecule1",single,1,2).

	atom("Molecule2",1,carb). atom("Molecule2",2,carb). atom("Molecule2",3,carb).
    bond("Molecule2",single,1,2). bond("Molecule2",single,2,3).

Reaction between molecules are represented as link between two molecules with a name:

.. code:: sh

	reaction(reaction1,"Molecule1","Molecule2").

A common domain is needed to find which molecules share structure with others:

.. code:: sh

	atomDomain(commonDomainName,1,carb). atomDomain(commonDomainName,2,carb).
    bondDomain(commonDomainName,single,1,2).

A molecule source is defined:

.. code:: sh

	source("Molecule1").

Initiation and goal of the incremental grounding must be defined:

.. code:: sh

    init(pathway("Molecule1","Molecule2")).
    goal(pathway("Molecule1","Molecule3")).

M/Z ratio can be added to check whether there is a metabolite that can be predict with this ratio. M/Z ratio must be multiplied by 10 000 because Clingo doesn't use decimals.

.. code:: sh

    mzfiltering(2702720).

Molecules that are not in the organism of study can be added. They will not be targeted of the inference methods.

.. code:: sh

    absentmolecules("Molecule1").

Use
~~~

Command-line:

.. code:: sh

	pathmodel -d data.lp

In python:

.. code:: python

    import pathmodel

	pathmodel.pathmodel_analysis('data.lp')

Output data
~~~~~~~~~~~

Using networkx, inferred pathways are represented as png picture. Also a result.lp file is created containing all the inferred reactions.

Example
~~~~~~~

data/data.lp contains example for sterols and mycosporine-like amino-acids pathways.

test/data.lp contains an example with fictional molecules to test PathModel.
