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

Using git
~~~~~~~~~

.. code:: sh

	git clone https://gitlab.inria.fr/abelcour/PathModel.git

Description
-----------

PathModel is developed in `ASP <https://en.wikipedia.org/wiki/Answer_set_programming>`__. It is divided in two scripts.

The first one, `ReactionCreation.lp <https://gitlab.inria.fr/abelcour/PathModel/blob/new_inference_method/pathmodel/asp/ReactionCreation.lp>`__ creates reaction site.

When a reaction is described between two molecules, the script will compare atoms and bonds of the two molecules of the reaction and will extract a reaction site before the reaction (composed of atoms and bonds that are present in the reactant but absent in the product) and a reaction site after the reaction (composed of atoms and bonds present in the product but absent in the reactant).

ReactionCreation produces two sites for each reaction (one before and one after the reaction).
These sites will be used by the second script: `PathModel.lp <https://gitlab.inria.fr/abelcour/PathModel/blob/new_inference_method/pathmodel/asp/PathModel.lp>`__.

PathModel will use two inference methods: one creating new metabolites and one infering a reaction between two metabolites.

Input data
~~~~~~~~~~

Molecules are modelled with atoms (hydrogen excluded) and bonds (simple and double).

Use
~~~

Launch `wrapping_PathModel.py <https://gitlab.inria.fr/abelcour/PathModel/blob/new_inference_method/pathmodel/wrapping_PathModel.py>`__ with Python3.

Example
~~~~~~~

pathmodel/data.lp contains example for sterols and mycosporine amino-acids pathways.

test/data.lp contains an example with fictionnal molecules to test PathModel.