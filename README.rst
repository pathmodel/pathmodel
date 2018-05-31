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

For the wrapping script, Python3 `<https://www.python.org/>`__ and `clyngor package <https://github.com/Aluriak/clyngor>`__ are needed.

Using pip
~~~~~~~~~

.. code:: sh

	git clone https://gitlab.inria.fr/abelcour/PathModel.git

Description
-----------

PathModel is developed in `ASP <https://en.wikipedia.org/wiki/Answer_set_programming>`__. It is divided in two scripts.

The first one, `ReactionCreation.lp <https://gitlab.inria.fr/abelcour/PathModel/blob/new_inference_method/pathmodel/asp/ReactionCreation.lp>`__ creates reaction site.
When a reaction is described between two molecules, the script will compare atoms and links of the two molecules of the reaction and will extract a reaction site before the reaction (composed of atoms and links that are present in the reactant but absent in the product) and a reaction site after the reaction (composed of atoms and links present in the product but absent in the reactant).
ReactionCreation produces two sites for each reaction (one before and one fater the reaction. These sites will be used by the second script: `PathModel.lp <https://gitlab.inria.fr/abelcour/PathModel/blob/new_inference_method/pathmodel/asp/PathModel.lp>`__.

Input data
~~~~~~~~~~

Molecules are modelled with links and components.
Components corresponds to the atoms (Carbon, Oxygen and Nitrogen) of the molecule, Hydrogen are not implemented.
Links corespond to bond between atoms. 

Example
~~~~~~~

pathmodel/data.lp contains example for sterols and mycosporine amino-acids pathways.

test/data.lp contains an example with fictionnal molecule to test PathModel.