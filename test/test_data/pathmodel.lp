% Molecule 1
atom("molecule_1",1..4,carb). 
bond("molecule_1",simple,1,2). bond("molecule_1",simple,1,3). bond("molecule_1",simple,2,3).
bond("molecule_1",simple,2,4).

% Molecule 2
atom("molecule_2",1..4,carb). 
bond("molecule_2",simple,1,2). bond("molecule_2",simple,1,3). bond("molecule_2",simple,2,3).
bond("molecule_2",double,2,4).

% Molecule 3
atom("molecule_3",1..6,carb). 
bond("molecule_3",simple,1,2). bond("molecule_3",simple,1,3). bond("molecule_3",simple,1,6).
bond("molecule_3",simple,2,3). bond("molecule_3",simple,2,4). bond("molecule_3",simple,3,6).

% Molecule 4
atom("molecule_4",1..6,carb). 
bond("molecule_4",simple,1,2). bond("molecule_4",simple,1,3). bond("molecule_4",simple,1,6).
bond("molecule_4",simple,2,3). bond("molecule_4",double,2,4). bond("molecule_4",simple,3,6).

% Molecule 5
atom("molecule_5",1..7,carb). 
bond("molecule_5",simple,1,2). bond("molecule_5",simple,1,3). bond("molecule_5",simple,1,6).
bond("molecule_5",simple,1,7). bond("molecule_5",simple,2,3). bond("molecule_5",simple,2,4).
bond("molecule_5",double,3,6).

% Shared domain.

atomDomain(triangle,1..3,carb).
bondDomain(triangle,simple,1,2). bondDomain(triangle,simple,1,3).
bondDomain(triangle,simple,2,3).

% Known reaction.

reaction(saturation, "molecule_1", "molecule_2").

% Molecule Source.

source("molecule_3").
source("molecule_5").

% Known MZ.

mzfiltering(941489).

% Initiation and goal of incremental grounding.
init(pathway("molecule_1","molecule_2")).
goal(pathway("molecule_3","molecule_4")).
