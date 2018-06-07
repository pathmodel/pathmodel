% INPUT
% Molecule 1
component("molecule_1",1..4,carb). 
link("molecule_1",simple,1,2). link("molecule_1",simple,1,3). link("molecule_1",simple,2,3).
link("molecule_1",simple,2,4).
% Molecule 2
component("molecule_2",1..4,carb). 
link("molecule_2",simple,1,2). link("molecule_2",simple,1,3). link("molecule_2",simple,2,3).
link("molecule_2",double,2,4).
% Molecule 3
component("molecule_3",1..6,carb). 
link("molecule_3",simple,1,2). link("molecule_3",simple,1,3). link("molecule_3",simple,1,6).
link("molecule_3",simple,2,3). link("molecule_3",simple,2,4). link("molecule_3",simple,3,6).
% Molecule 4
component("molecule_4",1..6,carb). 
link("molecule_4",simple,1,2). link("molecule_4",simple,1,3). link("molecule_4",simple,1,6).
link("molecule_4",simple,2,3). link("molecule_4",double,2,4). link("molecule_4",simple,3,6).
% Molecule 5
component("molecule_5",1..7,carb). 
link("molecule_5",simple,1,2). link("molecule_5",simple,1,3). link("molecule_5",simple,1,6).
link("molecule_5",simple,1,7). link("molecule_5",simple,2,3). link("molecule_5",simple,2,4).
link("molecule_5",double,3,6).
reaction(saturation, "molecule_1", "molecule_2").
source("molecule_3").
source("molecule_5").
mzfiltering(941489).
init(pathway("molecule_1","molecule_2")).
goal(pathway("molecule_3","molecule_4")).

% OUTPUT
% Reaction site for each reaction.
diffLinkBeforeReaction(saturation,simple,2,4).
diffLinkAfterReaction(saturation,double,2,4).
siteBeforeReaction(saturation,"molecule_1").
siteBeforeReaction(saturation,"molecule_3").
siteBeforeReaction(saturation,"molecule_5").
siteAfterReaction(saturation,"molecule_2").
siteAfterReaction(saturation,"molecule_4").
