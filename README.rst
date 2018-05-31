PathModel
=========

PathModel is a tool to predict new metabolite and new reaction using known metabolites and known reactions. 

There is no guarantee that this script will work, it is a Work In Progress in early state.

.. contents:: Table of contents
   :backlinks: top
   :local:

Installation
------------

Requirements
~~~~~~~~~~~~

You must have an environment where Clingo is installed. Pathway-Tools can be obtained `here <https://github.com/potassco/clingo>`__.

For the wrapping script, you need Python3 `<https://www.python.org/>`__ and `clyngor package <https://github.com/Aluriak/clyngor>`__.

Using pip
~~~~~~~~~

.. code:: sh

	git clone https://gitlab.inria.fr/abelcour/PathModel.git

Use
---

Input data
~~~~~~~~~~

Molecules are modelled with links and components.
Components corresponds to the atoms (Carbon, Oxygen and Nitrogen) of the molecule, Hydrogen are not implemented.
Links corespond to bond between atoms. 

Example
~~~~~~~

data.lp contains example for sterols and mycosporine amino-acids pathways.