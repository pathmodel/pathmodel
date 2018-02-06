%*
Data
Describing the starting set of metabolites

component(Compound name, Atom number, Atom type).
link(Compound name, Chemical bond type, Atom number1, Greater Atom number2).
*%

% Sterol
% TO DO: move from IUPAC nomenclature 1976 to IUPAC nomenclature 1989

component("cycloartenol",1..27,carb). component("cycloartenol",30..31,carb). component("cycloartenol",32,oxyg).
component("cycloartenol",33,carb).
link("cycloartenol",simple,1,2). link("cycloartenol",simple,1,10). link("cycloartenol",simple,2,3).
link("cycloartenol",simple,3,4). link("cycloartenol",simpleR,3,32). link("cycloartenol",simple,4,5).
link("cycloartenol",simpleR,4,30). link("cycloartenol",simpleS,4,31).
link("cycloartenol",simple,5,6). link("cycloartenol",simple,5,10). link("cycloartenol",simple,6,7).
link("cycloartenol",simple,7,8). link("cycloartenol",simple,8,9). link("cycloartenol",simple,8,14).
link("cycloartenol",simple,9,10). link("cycloartenol",simple,9,11).link("cycloartenol",simpleR,9,19).
link("cycloartenol",simpleR,10,19).
link("cycloartenol",simple,11,12). link("cycloartenol",simple,12,13). link("cycloartenol",simple,13,14).
link("cycloartenol",simple,14,15). link("cycloartenol",simpleS,14,33).
link("cycloartenol",simple,15,16). link("cycloartenol",simple,16,17).
link("cycloartenol",simple,13,17). link("cycloartenol",simpleR,13,18). link("cycloartenol",simpleR,17,20).
link("cycloartenol",simpleS,20,21). link("cycloartenol",simple,20,22). link("cycloartenol",simple,22,23).
link("cycloartenol",simple,23,24). link("cycloartenol",double,24,25). link("cycloartenol",simple,25,26).
link("cycloartenol",simple,25,27).

component("cycloartanol",1..27,carb). component("cycloartanol",30..31,carb). component("cycloartanol",32,oxyg).
component("cycloartanol",33,carb).
link("cycloartanol",simple,1,2). link("cycloartanol",simple,1,10). link("cycloartanol",simple,2,3).
link("cycloartanol",simple,3,4). link("cycloartanol",simpleR,3,32). link("cycloartanol",simple,4,5).
link("cycloartanol",simpleR,4,30). link("cycloartanol",simpleS,4,31).
link("cycloartanol",simple,5,6). link("cycloartanol",simple,5,10). link("cycloartanol",simple,6,7).
link("cycloartanol",simple,7,8). link("cycloartanol",simple,8,9). link("cycloartanol",simple,8,14).
link("cycloartanol",simple,9,10). link("cycloartanol",simple,9,11).link("cycloartanol",simpleR,9,19).
link("cycloartanol",simpleR,10,19).
link("cycloartanol",simple,11,12). link("cycloartanol",simple,12,13). link("cycloartanol",simple,13,14).
link("cycloartanol",simple,14,15). link("cycloartanol",simpleS,14,33).
link("cycloartanol",simple,15,16). link("cycloartanol",simple,16,17).
link("cycloartanol",simple,13,17). link("cycloartanol",simpleR,13,18). link("cycloartanol",simpleR,17,20).
link("cycloartanol",simpleS,20,21). link("cycloartanol",simple,20,22). link("cycloartanol",simple,22,23).
link("cycloartanol",simple,23,24). link("cycloartanol",simple,24,25). link("cycloartanol",simple,25,26).
link("cycloartanol",simple,25,27).

component("sitosterol",1..29,carb). component("sitosterol",32,oxyg).
link("sitosterol",simple,1,2). link("sitosterol",simple,1,10). link("sitosterol",simple,2,3).
link("sitosterol",simple,3,4). link("sitosterol",simpleR,3,32). link("sitosterol",simple,4,5).
link("sitosterol",double,5,6). link("sitosterol",simple,5,10). link("sitosterol",simple,6,7).
link("sitosterol",simple,7,8). link("sitosterol",simple,8,9). link("sitosterol",simple,8,14).
link("sitosterol",simple,9,10).  link("sitosterol",simple,9,11). link("sitosterol",simpleR,10,19).
link("sitosterol",simple,11,12). link("sitosterol",simple,12,13). link("sitosterol",simple,13,14).
link("sitosterol",simple,13,17). link("sitosterol",simpleR,13,18). link("sitosterol",simple,14,15).
link("sitosterol",simple,15,16). link("sitosterol",simple,16,17). link("sitosterol",simpleR,17,20).
link("sitosterol",simpleS,20,21). link("sitosterol",simple,20,22). link("sitosterol",simple,22,23).
link("sitosterol",simple,23,24). link("sitosterol",simple,24,25). link("sitosterol",simple,25,26).
link("sitosterol",simple,25,27). link("sitosterol",simpleR,24,28). link("sitosterol",simple,28,29).

component("stigmasterol",1..29,carb). component("stigmasterol",32,oxyg).
link("stigmasterol",simple,1,2). link("stigmasterol",simple,1,10). link("stigmasterol",simple,2,3).
link("stigmasterol",simple,3,4). link("stigmasterol",simpleR,3,32). link("stigmasterol",simple,4,5).
link("stigmasterol",double,5,6). link("stigmasterol",simple,5,10). link("stigmasterol",simple,6,7).
link("stigmasterol",simple,7,8). link("stigmasterol",simple,8,9). link("stigmasterol",simple,8,14).
link("stigmasterol",simple,9,10).  link("stigmasterol",simple,9,11). link("stigmasterol",simpleR,10,19).
link("stigmasterol",simple,11,12). link("stigmasterol",simple,12,13). link("stigmasterol",simple,13,14).
link("stigmasterol",simple,13,17). link("stigmasterol",simpleR,13,18). link("stigmasterol",simple,14,15).
link("stigmasterol",simple,15,16). link("stigmasterol",simple,16,17). link("stigmasterol",simpleR,17,20).
link("stigmasterol",simpleS,20,21). link("stigmasterol",simple,20,22). link("stigmasterol",double,22,23).
link("stigmasterol",simple,23,24). link("stigmasterol",simple,24,25). link("stigmasterol",simple,25,26).
link("stigmasterol",simple,25,27). link("stigmasterol",simpleR,24,28). link("stigmasterol",simple,28,29).

component("24-methylenecholesterol",1..28,carb). component("24-methylenecholesterol",32,oxyg).
link("24-methylenecholesterol",simple,1,2). link("24-methylenecholesterol",simple,1,10). link("24-methylenecholesterol",simple,2,3).
link("24-methylenecholesterol",simple,3,4). link("24-methylenecholesterol",simpleR,3,32). link("24-methylenecholesterol",simple,4,5).
link("24-methylenecholesterol",double,5,6). link("24-methylenecholesterol",simple,5,10). link("24-methylenecholesterol",simple,6,7).
link("24-methylenecholesterol",simple,7,8). link("24-methylenecholesterol",simple,8,9). link("24-methylenecholesterol",simple,8,14).
link("24-methylenecholesterol",simple,9,10). link("24-methylenecholesterol",simple,9,11). link("24-methylenecholesterol",simpleR,10,19).
link("24-methylenecholesterol",simple,11,12). link("24-methylenecholesterol",simple,12,13). link("24-methylenecholesterol",simple,13,14).
link("24-methylenecholesterol",simple,14,15). link("24-methylenecholesterol",simple,15,16). link("24-methylenecholesterol",simple,16,17).
link("24-methylenecholesterol",simple,13,17). link("24-methylenecholesterol",simpleR,13,18). link("24-methylenecholesterol",simpleR,17,20).
link("24-methylenecholesterol",simpleS,20,21). link("24-methylenecholesterol",simple,20,22). link("24-methylenecholesterol",simple,22,23).
link("24-methylenecholesterol",simple,23,24). link("24-methylenecholesterol",simple,24,25). link("24-methylenecholesterol",simple,25,26).
link("24-methylenecholesterol",simple,25,27). link("24-methylenecholesterol",double,24,28).

component("24-epicampesterol",1..28,carb). component("24-epicampesterol",32,oxyg).
link("24-epicampesterol",simple,1,2). link("24-epicampesterol",simple,1,10). link("24-epicampesterol",simple,2,3).
link("24-epicampesterol",simple,3,4). link("24-epicampesterol",simpleR,3,32). link("24-epicampesterol",simple,4,5).
link("24-epicampesterol",double,5,6). link("24-epicampesterol",simple,5,10). link("24-epicampesterol",simple,6,7).
link("24-epicampesterol",simple,7,8). link("24-epicampesterol",simple,8,9). link("24-epicampesterol",simple,8,14).
link("24-epicampesterol",simple,9,10). link("24-epicampesterol",simple,9,11). link("24-epicampesterol",simpleR,10,19).
link("24-epicampesterol",simple,11,12). link("24-epicampesterol",simple,12,13). link("24-epicampesterol",simple,13,14).
link("24-epicampesterol",simple,14,15). link("24-epicampesterol",simple,15,16). link("24-epicampesterol",simple,16,17).
link("24-epicampesterol",simple,13,17). link("24-epicampesterol",simpleR,13,18). link("24-epicampesterol",simpleR,17,20).
link("24-epicampesterol",simpleS,20,21). link("24-epicampesterol",simple,20,22). link("24-epicampesterol",simple,22,23).
link("24-epicampesterol",simple,23,24). link("24-epicampesterol",simple,24,25). link("24-epicampesterol",simple,25,26).
link("24-epicampesterol",simple,25,27). link("24-epicampesterol",simpleR,24,28).

component("brassicasterol",1..28,carb). component("brassicasterol",32,oxyg).
link("brassicasterol",simple,1,2). link("brassicasterol",simple,1,10). link("brassicasterol",simple,2,3).
link("brassicasterol",simple,3,4). link("brassicasterol",simpleR,3,32). link("brassicasterol",simple,4,5).
link("brassicasterol",double,5,6). link("brassicasterol",simple,5,10). link("brassicasterol",simple,6,7).
link("brassicasterol",simple,7,8). link("brassicasterol",simple,8,9). link("brassicasterol",simple,8,14).
link("brassicasterol",simple,9,10). link("brassicasterol",simple,9,11). link("brassicasterol",simpleR,10,19).
link("brassicasterol",simple,11,12). link("brassicasterol",simple,12,13). link("brassicasterol",simple,13,14).
link("brassicasterol",simple,14,15). link("brassicasterol",simple,15,16). link("brassicasterol",simple,16,17).
link("brassicasterol",simple,13,17). link("brassicasterol",simpleR,13,18). link("brassicasterol",simpleR,17,20).
link("brassicasterol",simpleS,20,21). link("brassicasterol",simple,20,22). link("brassicasterol",double,22,23).
link("brassicasterol",simple,23,24). link("brassicasterol",simple,24,25). link("brassicasterol",simple,25,26).
link("brassicasterol",simple,25,27). link("brassicasterol",simpleR,24,28).

component("7-dehydrocholesterol",1..27,carb). component("7-dehydrocholesterol",32,oxyg).
link("7-dehydrocholesterol",simple,1,2). link("7-dehydrocholesterol",simple,1,10). link("7-dehydrocholesterol",simple,2,3).
link("7-dehydrocholesterol",simple,3,4). link("7-dehydrocholesterol",simpleR,3,32). link("7-dehydrocholesterol",simple,4,5).
link("7-dehydrocholesterol",double,5,6). link("7-dehydrocholesterol",simple,5,10). link("7-dehydrocholesterol",simple,6,7).
link("7-dehydrocholesterol",double,7,8). link("7-dehydrocholesterol",simple,8,9). link("7-dehydrocholesterol",simple,8,14).
link("7-dehydrocholesterol",simple,9,10). link("7-dehydrocholesterol",simple,9,11). link("7-dehydrocholesterol",simpleR,10,19).
link("7-dehydrocholesterol",simple,11,12). link("7-dehydrocholesterol",simple,12,13). link("7-dehydrocholesterol",simple,13,14).
link("7-dehydrocholesterol",simple,14,15). link("7-dehydrocholesterol",simple,15,16). link("7-dehydrocholesterol",simple,16,17).
link("7-dehydrocholesterol",simple,13,17). link("7-dehydrocholesterol",simpleR,13,18). link("7-dehydrocholesterol",simpleR,17,20).
link("7-dehydrocholesterol",simpleS,20,21). link("7-dehydrocholesterol",simple,20,22). link("7-dehydrocholesterol",simple,22,23).
link("7-dehydrocholesterol",simple,23,24). link("7-dehydrocholesterol",simple,24,25). link("7-dehydrocholesterol",simple,25,26).
link("7-dehydrocholesterol",simple,25,27).

component("cholesterol",1..27,carb). component("cholesterol",32,oxyg).
link("cholesterol",simple,1,2). link("cholesterol",simple,1,10). link("cholesterol",simple,2,3).
link("cholesterol",simple,3,4). link("cholesterol",simpleR,3,32). link("cholesterol",simple,4,5).
link("cholesterol",double,5,6). link("cholesterol",simple,5,10). link("cholesterol",simple,6,7).
link("cholesterol",simple,7,8). link("cholesterol",simple,8,9). link("cholesterol",simple,8,14).
link("cholesterol",simple,9,10). link("cholesterol",simple,9,11). link("cholesterol",simpleR,10,19).
link("cholesterol",simple,11,12). link("cholesterol",simple,12,13). link("cholesterol",simple,13,14).
link("cholesterol",simple,14,15). link("cholesterol",simple,15,16). link("cholesterol",simple,16,17).
link("cholesterol",simple,13,17). link("cholesterol",simpleR,13,18). link("cholesterol",simpleR,17,20).
link("cholesterol",simpleS,20,21). link("cholesterol",simple,20,22). link("cholesterol",simple,22,23).
link("cholesterol",simple,23,24). link("cholesterol",simple,24,25). link("cholesterol",simple,25,26).
link("cholesterol",simple,25,27).

component("22-dehydrocholesterol",1..27,carb). component("22-dehydrocholesterol",32,oxyg).
link("22-dehydrocholesterol",simple,1,2). link("22-dehydrocholesterol",simple,1,10). link("22-dehydrocholesterol",simple,2,3).
link("22-dehydrocholesterol",simple,3,4). link("22-dehydrocholesterol",simpleR,3,32). link("22-dehydrocholesterol",simple,4,5).
link("22-dehydrocholesterol",double,5,6). link("22-dehydrocholesterol",simple,5,10). link("22-dehydrocholesterol",simple,6,7).
link("22-dehydrocholesterol",simple,7,8). link("22-dehydrocholesterol",simple,8,9). link("22-dehydrocholesterol",simple,8,14).
link("22-dehydrocholesterol",simple,9,10). link("22-dehydrocholesterol",simple,9,11). link("22-dehydrocholesterol",simpleR,10,19).
link("22-dehydrocholesterol",simple,11,12). link("22-dehydrocholesterol",simple,12,13). link("22-dehydrocholesterol",simple,13,14).
link("22-dehydrocholesterol",simple,14,15). link("22-dehydrocholesterol",simple,15,16). link("22-dehydrocholesterol",simple,16,17).
link("22-dehydrocholesterol",simple,13,17). link("22-dehydrocholesterol",simpleR,13,18). link("22-dehydrocholesterol",simpleR,17,20).
link("22-dehydrocholesterol",simpleS,20,21). link("22-dehydrocholesterol",simple,20,22). link("22-dehydrocholesterol",double,22,23).
link("22-dehydrocholesterol",simple,23,24). link("22-dehydrocholesterol",simple,24,25). link("22-dehydrocholesterol",simple,25,26).
link("22-dehydrocholesterol",simple,25,27).

component("6α-hydroxycholest-4-ene-3-one",1..27,carb). component("6α-hydroxycholest-4-ene-3-one",32..33,oxyg).
link("6α-hydroxycholest-4-ene-3-one",simple,1,2). link("6α-hydroxycholest-4-ene-3-one",simple,1,10). link("6α-hydroxycholest-4-ene-3-one",simple,2,3).
link("6α-hydroxycholest-4-ene-3-one",simple,3,4). link("6α-hydroxycholest-4-ene-3-one",double,3,32). link("6α-hydroxycholest-4-ene-3-one",simple,4,5).
link("6α-hydroxycholest-4-ene-3-one",double,5,6). link("6α-hydroxycholest-4-ene-3-one",simple,5,10). link("6α-hydroxycholest-4-ene-3-one",simple,6,7).
link("6α-hydroxycholest-4-ene-3-one",simple,6,7). link("6α-hydroxycholest-4-ene-3-one",simpleS,6,33). link("6α-hydroxycholest-4-ene-3-one",simple,7,8).
link("6α-hydroxycholest-4-ene-3-one",simple,8,9). link("6α-hydroxycholest-4-ene-3-one",simple,8,14). link("6α-hydroxycholest-4-ene-3-one",simple,9,10).
link("6α-hydroxycholest-4-ene-3-one",simple,9,11). link("6α-hydroxycholest-4-ene-3-one",simpleR,10,19). link("6α-hydroxycholest-4-ene-3-one",simple,11,12).
link("6α-hydroxycholest-4-ene-3-one",simple,12,13). link("6α-hydroxycholest-4-ene-3-one",simple,13,14).  link("6α-hydroxycholest-4-ene-3-one",simple,14,15).
link("6α-hydroxycholest-4-ene-3-one",simple,15,16). link("6α-hydroxycholest-4-ene-3-one",simple,16,17). link("6α-hydroxycholest-4-ene-3-one",simple,13,17).
link("6α-hydroxycholest-4-ene-3-one",simpleR,13,18). link("6α-hydroxycholest-4-ene-3-one",simpleR,17,20). link("6α-hydroxycholest-4-ene-3-one",simpleS,20,21).
link("6α-hydroxycholest-4-ene-3-one",simple,20,22). link("6α-hydroxycholest-4-ene-3-one",simple,22,23). link("6α-hydroxycholest-4-ene-3-one",simple,23,24).
link("6α-hydroxycholest-4-ene-3-one",simple,24,25). link("6α-hydroxycholest-4-ene-3-one",simple,25,26). link("6α-hydroxycholest-4-ene-3-one",simple,25,27).

component("6α-hydroxycholest-4,22-diene-3-one",1..27,carb). component("6α-hydroxycholest-4,22-diene-3-one",32..33,oxyg).
link("6α-hydroxycholest-4,22-diene-3-one",simple,1,2). link("6α-hydroxycholest-4,22-diene-3-one",simple,1,10). link("6α-hydroxycholest-4,22-diene-3-one",simple,2,3).
link("6α-hydroxycholest-4,22-diene-3-one",simple,3,4). link("6α-hydroxycholest-4,22-diene-3-one",double,3,32). link("6α-hydroxycholest-4,22-diene-3-one",simple,4,5).
link("6α-hydroxycholest-4,22-diene-3-one",double,5,6). link("6α-hydroxycholest-4,22-diene-3-one",simple,5,10). link("6α-hydroxycholest-4,22-diene-3-one",simple,6,7).
link("6α-hydroxycholest-4,22-diene-3-one",simple,6,7). link("6α-hydroxycholest-4,22-diene-3-one",simpleS,6,33). link("6α-hydroxycholest-4,22-diene-3-one",simple,7,8).
link("6α-hydroxycholest-4,22-diene-3-one",simple,8,9). link("6α-hydroxycholest-4,22-diene-3-one",simple,8,14). link("6α-hydroxycholest-4,22-diene-3-one",simple,9,10).
link("6α-hydroxycholest-4,22-diene-3-one",simple,9,11). link("6α-hydroxycholest-4,22-diene-3-one",simpleR,10,19). link("6α-hydroxycholest-4,22-diene-3-one",simple,11,12).
link("6α-hydroxycholest-4,22-diene-3-one",simple,12,13). link("6α-hydroxycholest-4,22-diene-3-one",simple,13,14).  link("6α-hydroxycholest-4,22-diene-3-one",simple,14,15).
link("6α-hydroxycholest-4,22-diene-3-one",simple,15,16). link("6α-hydroxycholest-4,22-diene-3-one",simple,16,17). link("6α-hydroxycholest-4,22-diene-3-one",simple,13,17).
link("6α-hydroxycholest-4,22-diene-3-one",simpleR,13,18). link("6α-hydroxycholest-4,22-diene-3-one",simpleR,17,20). link("6α-hydroxycholest-4,22-diene-3-one",simpleS,20,21).
link("6α-hydroxycholest-4,22-diene-3-one",simple,20,22). link("6α-hydroxycholest-4,22-diene-3-one",double,22,23). link("6α-hydroxycholest-4,22-diene-3-one",simple,23,24).
link("6α-hydroxycholest-4,22-diene-3-one",simple,24,25). link("6α-hydroxycholest-4,22-diene-3-one",simple,25,26). link("6α-hydroxycholest-4,22-diene-3-one",simple,25,27).

% Amino acids

component("glycine",1..2,carb). component("glycine",3..4,oxyg). component("glycine",5,nitr). 
link("glycine",simple,1,2). link("glycine",simple,1,5). link("glycine",double,2,3).
link("glycine",simple,2,4). 

component("serine",1..2,carb). component("serine",3..4,oxyg). component("serine",5,nitr).
component("serine",6,carb). component("serine",7,oxyg).
link("serine",simple,1,2).  link("serine",double,1,3). link("serine",simple,1,4).
link("serine",simple,2,5). link("serine",simple,2,6). link("serine",simple,6,7). 

component("threonine",1..2,carb). component("threonine",3..4,oxyg). component("threonine",5,nitr).
component("threonine",6,carb). component("threonine",7,oxyg). component("threonine",8,carb).
link("threonine",simple,1,2). link("threonine",double,1,3). link("threonine",simple,1,4). 
link("threonine",simple,2,5). link("threonine",simple,2,6). link("threonine",simple,6,7).
link("threonine",simple,6,8). 

aminoacid(glycine;serine;threonine).

% Mycosporine-like amino acids

component("mycosporin-glycine",1..7,carb). component("mycosporin-glycine",8,nitr). component("mycosporin-glycine",9..12,oxyg).
component("mycosporin-glycine",13..15,carb). component("mycosporin-glycine",16..17,oxyg).
link("mycosporin-glycine",double,1,2). link("mycosporin-glycine",simple,2,3). link("mycosporin-glycine",simple,3,4).
link("mycosporin-glycine",simple,4,5). link("mycosporin-glycine",simple,5,6). link("mycosporin-glycine",simple,1,6).
link("mycosporin-glycine",simple,5,7). link("mycosporin-glycine",double,3,10). link("mycosporin-glycine",simple,1,8).
link("mycosporin-glycine",simple,5,12). link("mycosporin-glycine",simple,7,11). link("mycosporin-glycine",simple,2,9).
link("mycosporin-glycine",simple,9,13). link("mycosporin-glycine",simple,8,14). link("mycosporin-glycine",simple,14,15).
link("mycosporin-glycine",double,15,16). link("mycosporin-glycine",simple,15,17).

component("shinorine",1..7,carb). component("shinorine",8,nitr). component("shinorine",9,oxyg).
component("shinorine",10,nitr). component("shinorine",11..12,oxyg). component("shinorine",13..15,carb).
component("shinorine",16..17,oxyg). component("shinorine",18..19,carb). component("shinorine",20,oxyg).
component("shinorine",21,carb). component("shinorine",22..23,oxyg). 
link("shinorine",double,1,2). link("shinorine",simple,2,3). link("shinorine",simple,3,4).
link("shinorine",simple,4,5). link("shinorine",simple,5,6). link("shinorine",simple,1,6).
link("shinorine",simple,5,7). link("shinorine",double,3,10). link("shinorine",simple,1,8).
link("shinorine",simple,5,12). link("shinorine",simple,7,11). link("shinorine",simple,2,9). 
link("shinorine",simple,9,13). link("shinorine",simple,8,14). link("shinorine",simple,14,15).
link("shinorine",double,15,16). link("shinorine",simple,15,17). link("shinorine",simple,10,18).
link("shinorine",simple,18,19). link("shinorine",simple,19,20). link("shinorine",simple,18,21).
link("shinorine",double,21,22). link("shinorine",simple,21,23).

component("palythinol",1..7,carb). component("palythinol",8,nitr). component("palythinol",9,oxyg).
component("palythinol",10,nitr). component("palythinol",11..12,oxyg). component("palythinol",13..15,carb).
component("palythinol",16..17,oxyg). component("palythinol",18..19,carb). component("palythinol",20,oxyg).
component("palythinol",21,carb).
link("palythinol",double,1,2). link("palythinol",simple,2,3). link("palythinol",simple,3,4).
link("palythinol",simple,4,5). link("palythinol",simple,5,6). link("palythinol",simple,1,6).
link("palythinol",simple,5,7). link("palythinol",double,3,10). link("palythinol",simple,1,8).
link("palythinol",simple,5,12). link("palythinol",simple,7,11). link("palythinol",simple,2,9).
link("palythinol",simple,9,13). link("palythinol",simple,8,14). link("palythinol",simple,14,15).
link("palythinol",double,15,16). link("palythinol",simple,15,17). link("palythinol",simple,10,18).
link("palythinol",simple,18,19). link("palythinol",simple,19,20). link("palythinol",simple,18,21). 

component("asterina-330",1..7,carb). component("asterina-330",8,nitr). component("asterina-330",9,oxyg).
component("asterina-330",10,nitr). component("asterina-330",11..12,oxyg). component("asterina-330",13..15,carb).
component("asterina-330",16..17,oxyg). component("asterina-330",18..19,carb). component("asterina-330",20,oxyg).
link("asterina-330",double,1,2). link("asterina-330",simple,2,3). link("asterina-330",simple,3,4).
link("asterina-330",simple,4,5). link("asterina-330",simple,5,6). link("asterina-330",simple,1,6).
link("asterina-330",simple,5,7). link("asterina-330",double,3,10). link("asterina-330",simple,1,8).
link("asterina-330",simple,5,12). link("asterina-330",simple,7,11). link("asterina-330",simple,2,9).
link("asterina-330",simple,9,13). link("asterina-330",simple,8,14). link("asterina-330",simple,14,15). 
link("asterina-330",double,15,16). link("asterina-330",simple,15,17). link("asterina-330",simple,10,18).
link("asterina-330",simple,18,19). link("asterina-330",simple,19,20). 

component("palythine",1..7,carb). component("palythine",8,nitr). component("palythine",9,oxyg).
component("palythine",10,nitr). component("palythine",11..12,oxyg). component("palythine",13..15,carb).
component("palythine",16..17,oxyg).
link("palythine",double,1,2). link("palythine",simple,2,3). link("palythine",simple,3,4).
link("palythine",simple,4,5). link("palythine",simple,5,6). link("palythine",simple,1,6).
link("palythine",simple,5,7). link("palythine",double,3,10). link("palythine",simple,1,8).
link("palythine",simple,5,12). link("palythine",simple,7,11). link("palythine",simple,2,9).
link("palythine",simple,9,13). link("palythine",simple,8,14). link("palythine",simple,14,15).
link("palythine",double,15,16). link("palythine",simple,15,17).

component("porphyra-334",1..7,carb). component("porphyra-334",8,nitr). component("porphyra-334",9,oxyg).
component("porphyra-334",10,nitr). component("porphyra-334",11..12,oxyg). component("porphyra-334",13..15,carb).
component("porphyra-334",16..17,oxyg). component("porphyra-334",18..19,carb). component("porphyra-334",20,oxyg).
component("porphyra-334",21,carb). component("porphyra-334",22..23,oxyg). component("porphyra-334",24,carb).
link("porphyra-334",double,1,2). link("porphyra-334",simple,2,3). link("porphyra-334",simple,3,4).
link("porphyra-334",simple,4,5). link("porphyra-334",simple,5,6). link("porphyra-334",simple,1,6).
link("porphyra-334",simple,5,7). link("porphyra-334",double,3,10). link("porphyra-334",simple,1,8).
link("porphyra-334",simple,5,12). link("porphyra-334",simple,7,11). link("porphyra-334",simple,2,9).
link("porphyra-334",simple,9,13). link("porphyra-334",simple,8,14). link("porphyra-334",simple,14,15).
link("porphyra-334",double,15,16). link("porphyra-334",simple,15,17). link("porphyra-334",simple,10,18).
link("porphyra-334",simple,18,19). link("porphyra-334",simple,19,20). link("porphyra-334",simple,18,21).
link("porphyra-334",double,21,22). link("porphyra-334",simple,21,23). link("porphyra-334",simple,19,24).

component("z-palythenic acid",1..7,carb). component("z-palythenic acid",8,nitr). component("z-palythenic acid",9,oxyg).
component("z-palythenic acid",10,nitr). component("z-palythenic acid",11..12,oxyg). component("z-palythenic acid",13..15,carb).
component("z-palythenic acid",16..17,oxyg). component("z-palythenic acid",18..19,carb). component("z-palythenic acid",20..21,carb).
component("z-palythenic acid",22..23,oxyg).
link("z-palythenic acid",double,1,2). link("z-palythenic acid",simple,2,3). link("z-palythenic acid",simple,3,4).
link("z-palythenic acid",simple,4,5). link("z-palythenic acid",simple,5,6). link("z-palythenic acid",simple,1,6).
link("z-palythenic acid",simple,5,7). link("z-palythenic acid",double,3,10). link("z-palythenic acid",simple,1,8).
link("z-palythenic acid",simple,5,12). link("z-palythenic acid",simple,7,11). link("z-palythenic acid",simple,2,9).
link("z-palythenic acid",simple,9,13). link("z-palythenic acid",simple,8,14). link("z-palythenic acid",simple,14,15).
link("z-palythenic acid",double,15,16). link("z-palythenic acid",simple,15,17). link("z-palythenic acid",simple,10,18).
link("z-palythenic acid",double,18,19). link("z-palythenic acid",simple,18,21). link("z-palythenic acid",double,21,22).
link("z-palythenic acid",simple,21,23). link("z-palythenic acid",simpleZ,19,20).

component("palythene",1..7,carb). component("palythene",8,nitr). component("palythene",9,oxyg).
component("palythene",10,nitr). component("palythene",11..12,oxyg). component("palythene",13..15,carb).
component("palythene",16..17,oxyg). component("palythene",18..20,carb).
link("palythene",double,1,2). link("palythene",simple,2,3). link("palythene",simple,3,4).
link("palythene",simple,4,5). link("palythene",simple,5,6). link("palythene",simple,1,6).
link("palythene",simple,5,7). link("palythene",double,3,10). link("palythene",simple,1,8).
link("palythene",simple,5,12). link("palythene",simple,7,11). link("palythene",simple,2,9).
link("palythene",simple,9,13). link("palythene",simple,8,14). link("palythene",simple,14,15).
link("palythene",double,15,16). link("palythene",simple,15,17). link("palythene",simple,10,18).
link("palythene",double,18,19). link("palythene",simpleZ,19,20).

component("hypothetic_MAA_1",1..7,carb). component("hypothetic_MAA_1",8,nitr). component("hypothetic_MAA_1",9,oxyg).
component("hypothetic_MAA_1",10,nitr). component("hypothetic_MAA_1",11..12,oxyg). component("hypothetic_MAA_1",13..15,carb).
component("hypothetic_MAA_1",16..17,oxyg). component("hypothetic_MAA_1",18..19,carb).
link("hypothetic_MAA_1",double,1,2). link("hypothetic_MAA_1",simple,2,3). link("hypothetic_MAA_1",simple,3,4).
link("hypothetic_MAA_1",simple,4,5). link("hypothetic_MAA_1",simple,5,6). link("hypothetic_MAA_1",simple,1,6).
link("hypothetic_MAA_1",simple,5,7). link("hypothetic_MAA_1",double,3,10). link("hypothetic_MAA_1",simple,1,8).
link("hypothetic_MAA_1",simple,5,12). link("hypothetic_MAA_1",simple,7,11). link("hypothetic_MAA_1",simple,2,9).
link("hypothetic_MAA_1",simple,9,13). link("hypothetic_MAA_1",simple,8,14). link("hypothetic_MAA_1",simple,14,15).
link("hypothetic_MAA_1",double,15,16). link("hypothetic_MAA_1",simple,15,17). link("hypothetic_MAA_1",simple,10,18).
link("hypothetic_MAA_1",double,18,19).

component("hypothetic_MAA_2",1..7,carb). component("hypothetic_MAA_2",8,nitr). component("hypothetic_MAA_2",9,oxyg).
component("hypothetic_MAA_2",10,nitr). component("hypothetic_MAA_2",11..12,oxyg). component("hypothetic_MAA_2",13..15,carb).
component("hypothetic_MAA_2",16..17,oxyg). component("hypothetic_MAA_2",18..19,carb).
link("hypothetic_MAA_2",double,1,2). link("hypothetic_MAA_2",simple,2,3). link("hypothetic_MAA_2",simple,3,4).
link("hypothetic_MAA_2",simple,4,5). link("hypothetic_MAA_2",simple,5,6). link("hypothetic_MAA_2",simple,1,6).
link("hypothetic_MAA_2",simple,5,7). link("hypothetic_MAA_2",double,3,10). link("hypothetic_MAA_2",simple,1,8).
link("hypothetic_MAA_2",simple,5,12). link("hypothetic_MAA_2",simple,7,11). link("hypothetic_MAA_2",simple,2,9).
link("hypothetic_MAA_2",simple,9,13). link("hypothetic_MAA_2",simple,8,14). link("hypothetic_MAA_2",simple,14,15).
link("hypothetic_MAA_2",double,15,16). link("hypothetic_MAA_2",simple,15,17). link("hypothetic_MAA_2",simple,10,18).
link("hypothetic_MAA_2",simple,18,19).

component("hypothetic_MAA_3",1..7,carb). component("hypothetic_MAA_3",8,nitr). component("hypothetic_MAA_3",9,oxyg).
component("hypothetic_MAA_3",10,nitr). component("hypothetic_MAA_3",11..12,oxyg). component("hypothetic_MAA_3",13..15,carb).
component("hypothetic_MAA_3",16..17,oxyg). component("hypothetic_MAA_3",18,carb).
link("hypothetic_MAA_3",double,1,2). link("hypothetic_MAA_3",simple,2,3). link("hypothetic_MAA_3",simple,3,4).
link("hypothetic_MAA_3",simple,4,5). link("hypothetic_MAA_3",simple,5,6). link("hypothetic_MAA_3",simple,1,6).
link("hypothetic_MAA_3",simple,5,7). link("hypothetic_MAA_3",double,3,10). link("hypothetic_MAA_3",simple,1,8).
link("hypothetic_MAA_3",simple,5,12). link("hypothetic_MAA_3",simple,7,11). link("hypothetic_MAA_3",simple,2,9).
link("hypothetic_MAA_3",simple,9,13). link("hypothetic_MAA_3",simple,8,14). link("hypothetic_MAA_3",simple,14,15).
link("hypothetic_MAA_3",double,15,16). link("hypothetic_MAA_3",simple,15,17). link("hypothetic_MAA_3",simple,10,18).

%* Known reactions
%%%%%%%%%%%%%%%%%%%
reaction(Reaction type (name), Compound 1 [, Active site atom number], [Compound 2 , Active site atom number], Resulting compound)
*%

% Create an hypothetic reaction to put "6α-hydroxycholest-4-ene-3-one" as an output_metabolite
reaction(hypothetic_reaction, "something", "6α-hydroxycholest-4-ene-3-one").

% Known reactions in Chondrus (inferred from other organisms)

% delta7reduction of 7-dehydrocholesterol gives cholesterol
reaction(delta7reduction, "7-dehydrocholesterol", "cholesterol").

reaction(delta24reduction,"24-methylenecholesterol", "24-epicampesterol").

reaction(c22_desaturation,"24-epicampesterol", "brassicasterol").

reaction(c22_desaturation,"sitosterol", "stigmasterol").

reaction(hydrogenation,"shinorine","palythinol").

reaction(demethylation,"palythinol", "asterina-330").

reaction(dehydration,"porphyra-334", "z-palythenic acid").

reaction(decarboxylation,"z-palythenic acid","palythene").

reaction("aminoacid_C-3_transfer","mycosporin-glycine","serine","shinorine").

reaction("aminoacid_C-3_transfer","mycosporin-glycine","threonine","porphyra-334").

% Punctual Reactions that need all atoms before/after a certain number of a given coumpound to occur

% concerning c-22-desaturation, has to have everything before C22, like in sitosterol
need_reaction(c22_desaturation, "sitosterol", before, 22, 23).
% OK for Chondrus, but will need to be reformulated for other red algae - see sterols-phylopaths.pdf

need_reaction(dehydration, "porphyra-334", before, 18, 20).
