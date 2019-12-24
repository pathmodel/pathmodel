%*
Data
Describing the starting set of metabolites

atom(Compound name, Atom number, Atom type).
bond(Compound name, Chemical bond type, Atom number1, Greater Atom number2).
*%

% Mycosporine-like amino acids PWY-7751

atom("sedoheptulose-7-phosphate",1..5,carb). atom("sedoheptulose-7-phosphate",6,oxyg). atom("sedoheptulose-7-phosphate",7,carb).
atom("sedoheptulose-7-phosphate",8,carb). atom("sedoheptulose-7-phosphate",9..12,oxyg). atom("sedoheptulose-7-phosphate",25,oxyg).
atom("sedoheptulose-7-phosphate",26..29,oxyg). atom("sedoheptulose-7-phosphate",30,phos).
bond("sedoheptulose-7-phosphate",single,1,2). bond("sedoheptulose-7-phosphate",single,2,3). bond("sedoheptulose-7-phosphate",single,3,4).
bond("sedoheptulose-7-phosphate",single,4,5). bond("sedoheptulose-7-phosphate",singleR,4,25). bond("sedoheptulose-7-phosphate",single,5,6).
bond("sedoheptulose-7-phosphate",single,1,6). bond("sedoheptulose-7-phosphate",singleR,5,7). bond("sedoheptulose-7-phosphate",singleS,3,10).
bond("sedoheptulose-7-phosphate",singleR,1,8). bond("sedoheptulose-7-phosphate",singleS,5,12). bond("sedoheptulose-7-phosphate",single,7,11).
bond("sedoheptulose-7-phosphate",singleS,2,9). bond("sedoheptulose-7-phosphate",single,9,26). bond("sedoheptulose-7-phosphate",single,26,30).
bond("sedoheptulose-7-phosphate",single,27,30). bond("sedoheptulose-7-phosphate",double,28,30). bond("sedoheptulose-7-phosphate",single,29,30).

atom("R-demethyl-4-deoxygadusol",1..7,carb). atom("R-demethyl-4-deoxygadusol",8,oxyg). atom("R-demethyl-4-deoxygadusol",9..12,oxyg).
bond("R-demethyl-4-deoxygadusol",double,1,2). bond("R-demethyl-4-deoxygadusol",single,2,3). bond("R-demethyl-4-deoxygadusol",single,3,4).
bond("R-demethyl-4-deoxygadusol",single,4,5). bond("R-demethyl-4-deoxygadusol",single,5,6). bond("R-demethyl-4-deoxygadusol",single,1,6).
bond("R-demethyl-4-deoxygadusol",single,5,7). bond("R-demethyl-4-deoxygadusol",double,3,10). bond("R-demethyl-4-deoxygadusol",single,1,8).
bond("R-demethyl-4-deoxygadusol",singleR,5,12). bond("R-demethyl-4-deoxygadusol",single,7,11). bond("R-demethyl-4-deoxygadusol",single,2,9).

atom("S-demethyl-4-deoxygadusol",1..7,carb). atom("S-demethyl-4-deoxygadusol",8,oxyg). atom("S-demethyl-4-deoxygadusol",9..12,oxyg).
bond("S-demethyl-4-deoxygadusol",double,1,2). bond("S-demethyl-4-deoxygadusol",single,2,3). bond("S-demethyl-4-deoxygadusol",single,3,4).
bond("S-demethyl-4-deoxygadusol",single,4,5). bond("S-demethyl-4-deoxygadusol",single,5,6). bond("S-demethyl-4-deoxygadusol",single,1,6).
bond("S-demethyl-4-deoxygadusol",single,5,7). bond("S-demethyl-4-deoxygadusol",double,3,10). bond("S-demethyl-4-deoxygadusol",single,1,8).
bond("S-demethyl-4-deoxygadusol",singleS,5,12). bond("S-demethyl-4-deoxygadusol",single,7,11). bond("S-demethyl-4-deoxygadusol",single,2,9).

atom("R-4-deoxygadusol",1..7,carb). atom("R-4-deoxygadusol",8,oxyg). atom("R-4-deoxygadusol",9..12,oxyg).
atom("R-4-deoxygadusol",13,carb).
bond("R-4-deoxygadusol",double,1,2). bond("R-4-deoxygadusol",single,2,3). bond("R-4-deoxygadusol",single,3,4).
bond("R-4-deoxygadusol",single,4,5). bond("R-4-deoxygadusol",single,5,6). bond("R-4-deoxygadusol",single,1,6).
bond("R-4-deoxygadusol",single,5,7). bond("R-4-deoxygadusol",double,3,10). bond("R-4-deoxygadusol",single,1,8).
bond("R-4-deoxygadusol",singleR,5,12). bond("R-4-deoxygadusol",single,7,11). bond("R-4-deoxygadusol",single,2,9).
bond("R-4-deoxygadusol",single,9,13).

atom("S-4-deoxygadusol",1..7,carb). atom("S-4-deoxygadusol",8,oxyg). atom("S-4-deoxygadusol",9..12,oxyg).
atom("S-4-deoxygadusol",13,carb).
bond("S-4-deoxygadusol",double,1,2). bond("S-4-deoxygadusol",single,2,3). bond("S-4-deoxygadusol",single,3,4).
bond("S-4-deoxygadusol",single,4,5). bond("S-4-deoxygadusol",single,5,6). bond("S-4-deoxygadusol",single,1,6).
bond("S-4-deoxygadusol",single,5,7). bond("S-4-deoxygadusol",double,3,10). bond("S-4-deoxygadusol",single,1,8).
bond("S-4-deoxygadusol",singleS,5,12). bond("S-4-deoxygadusol",single,7,11). bond("S-4-deoxygadusol",single,2,9).
bond("S-4-deoxygadusol",single,9,13).

atom("mycosporin-glycine",1..7,carb). atom("mycosporin-glycine",8,nitr). atom("mycosporin-glycine",9..12,oxyg).
atom("mycosporin-glycine",13..15,carb). atom("mycosporin-glycine",16..17,oxyg).
bond("mycosporin-glycine",double,1,2). bond("mycosporin-glycine",single,2,3). bond("mycosporin-glycine",single,3,4).
bond("mycosporin-glycine",single,4,5). bond("mycosporin-glycine",single,5,6). bond("mycosporin-glycine",single,1,6).
bond("mycosporin-glycine",single,5,7). bond("mycosporin-glycine",double,3,10). bond("mycosporin-glycine",single,1,8).
bond("mycosporin-glycine",singleS,5,12). bond("mycosporin-glycine",single,7,11). bond("mycosporin-glycine",single,2,9).
bond("mycosporin-glycine",single,9,13). bond("mycosporin-glycine",single,8,14). bond("mycosporin-glycine",single,14,15).
bond("mycosporin-glycine",double,15,16). bond("mycosporin-glycine",single,15,17).

atom("shinorine",1..7,carb). atom("shinorine",8,nitr). atom("shinorine",9,oxyg).
atom("shinorine",10,nitr). atom("shinorine",11..12,oxyg). atom("shinorine",13..15,carb).
atom("shinorine",16..17,oxyg). atom("shinorine",18..19,carb). atom("shinorine",20,oxyg).
atom("shinorine",21,carb). atom("shinorine",22..23,oxyg). 
bond("shinorine",double,1,2). bond("shinorine",single,2,3). bond("shinorine",single,3,4).
bond("shinorine",single,4,5). bond("shinorine",single,5,6). bond("shinorine",single,1,6).
bond("shinorine",single,5,7). bond("shinorine",double,3,10). bond("shinorine",single,1,8).
bond("shinorine",singleS,5,12). bond("shinorine",single,7,11). bond("shinorine",single,2,9). 
bond("shinorine",single,9,13). bond("shinorine",single,8,14). bond("shinorine",single,14,15).
bond("shinorine",double,15,16). bond("shinorine",single,15,17). bond("shinorine",single,10,18).
bond("shinorine",single,18,19). bond("shinorine",single,19,20). bond("shinorine",single,18,21).
bond("shinorine",double,21,22). bond("shinorine",single,21,23).

% Other Mycosporine amino-acids

atom("palythinol",1..7,carb). atom("palythinol",8,nitr). atom("palythinol",9,oxyg).
atom("palythinol",10,nitr). atom("palythinol",11..12,oxyg). atom("palythinol",13..15,carb).
atom("palythinol",16..17,oxyg). atom("palythinol",18..19,carb). atom("palythinol",20,oxyg).
atom("palythinol",21,carb).
bond("palythinol",double,1,2). bond("palythinol",single,2,3). bond("palythinol",single,3,4).
bond("palythinol",single,4,5). bond("palythinol",single,5,6). bond("palythinol",single,1,6).
bond("palythinol",single,5,7). bond("palythinol",double,3,10). bond("palythinol",single,1,8).
bond("palythinol",singleS,5,12). bond("palythinol",single,7,11). bond("palythinol",single,2,9).
bond("palythinol",single,9,13). bond("palythinol",single,8,14). bond("palythinol",single,14,15).
bond("palythinol",double,15,16). bond("palythinol",single,15,17). bond("palythinol",single,10,18).
bond("palythinol",single,18,19). bond("palythinol",single,19,20). bond("palythinol",single,18,21). 

atom("asterina-330",1..7,carb). atom("asterina-330",8,nitr). atom("asterina-330",9,oxyg).
atom("asterina-330",10,nitr). atom("asterina-330",11..12,oxyg). atom("asterina-330",13..15,carb).
atom("asterina-330",16..17,oxyg). atom("asterina-330",18..19,carb). atom("asterina-330",20,oxyg).
bond("asterina-330",double,1,2). bond("asterina-330",single,2,3). bond("asterina-330",single,3,4).
bond("asterina-330",single,4,5). bond("asterina-330",single,5,6). bond("asterina-330",single,1,6).
bond("asterina-330",single,5,7). bond("asterina-330",double,3,10). bond("asterina-330",single,1,8).
bond("asterina-330",singleS,5,12). bond("asterina-330",single,7,11). bond("asterina-330",single,2,9).
bond("asterina-330",single,9,13). bond("asterina-330",single,8,14). bond("asterina-330",single,14,15). 
bond("asterina-330",double,15,16). bond("asterina-330",single,15,17). bond("asterina-330",single,10,18).
bond("asterina-330",single,18,19). bond("asterina-330",single,19,20). 

atom("palythine",1..7,carb). atom("palythine",8,nitr). atom("palythine",9,oxyg).
atom("palythine",10,nitr). atom("palythine",11..12,oxyg). atom("palythine",13..15,carb).
atom("palythine",16..17,oxyg).
bond("palythine",double,1,2). bond("palythine",single,2,3). bond("palythine",single,3,4).
bond("palythine",single,4,5). bond("palythine",single,5,6). bond("palythine",single,1,6).
bond("palythine",single,5,7). bond("palythine",double,3,10). bond("palythine",single,1,8).
bond("palythine",singleS,5,12). bond("palythine",single,7,11). bond("palythine",single,2,9).
bond("palythine",single,9,13). bond("palythine",single,8,14). bond("palythine",single,14,15).
bond("palythine",double,15,16). bond("palythine",single,15,17).

atom("porphyra-334",1..7,carb). atom("porphyra-334",8,nitr). atom("porphyra-334",9,oxyg).
atom("porphyra-334",10,nitr). atom("porphyra-334",11..12,oxyg). atom("porphyra-334",13..15,carb).
atom("porphyra-334",16..17,oxyg). atom("porphyra-334",18..19,carb). atom("porphyra-334",20,oxyg).
atom("porphyra-334",21,carb). atom("porphyra-334",22..23,oxyg). atom("porphyra-334",24,carb).
bond("porphyra-334",double,1,2). bond("porphyra-334",single,2,3). bond("porphyra-334",single,3,4).
bond("porphyra-334",single,4,5). bond("porphyra-334",single,5,6). bond("porphyra-334",single,1,6).
bond("porphyra-334",single,5,7). bond("porphyra-334",double,3,10). bond("porphyra-334",single,1,8).
bond("porphyra-334",singleS,5,12). bond("porphyra-334",single,7,11). bond("porphyra-334",single,2,9).
bond("porphyra-334",single,9,13). bond("porphyra-334",single,8,14). bond("porphyra-334",single,14,15).
bond("porphyra-334",double,15,16). bond("porphyra-334",single,15,17). bond("porphyra-334",single,10,18).
bond("porphyra-334",single,18,19). bond("porphyra-334",single,19,20). bond("porphyra-334",single,18,21).
bond("porphyra-334",double,21,22). bond("porphyra-334",single,21,23). bond("porphyra-334",single,19,24).

atom("z-palythenic acid",1..7,carb). atom("z-palythenic acid",8,nitr). atom("z-palythenic acid",9,oxyg).
atom("z-palythenic acid",10,nitr). atom("z-palythenic acid",11..12,oxyg). atom("z-palythenic acid",13..15,carb).
atom("z-palythenic acid",16..17,oxyg). atom("z-palythenic acid",18..19,carb). atom("z-palythenic acid",21,carb).
atom("z-palythenic acid",22..23,oxyg). atom("z-palythenic acid",24,carb).
bond("z-palythenic acid",double,1,2). bond("z-palythenic acid",single,2,3). bond("z-palythenic acid",single,3,4).
bond("z-palythenic acid",single,4,5). bond("z-palythenic acid",single,5,6). bond("z-palythenic acid",single,1,6).
bond("z-palythenic acid",single,5,7). bond("z-palythenic acid",double,3,10). bond("z-palythenic acid",single,1,8).
bond("z-palythenic acid",singleS,5,12). bond("z-palythenic acid",single,7,11). bond("z-palythenic acid",single,2,9).
bond("z-palythenic acid",single,9,13). bond("z-palythenic acid",single,8,14). bond("z-palythenic acid",single,14,15).
bond("z-palythenic acid",double,15,16). bond("z-palythenic acid",single,15,17). bond("z-palythenic acid",single,10,18).
bond("z-palythenic acid",double,18,19). bond("z-palythenic acid",single,18,21). bond("z-palythenic acid",double,21,22).
bond("z-palythenic acid",single,21,23). bond("z-palythenic acid",single,19,24).

atom("palythene",1..7,carb). atom("palythene",8,nitr). atom("palythene",9,oxyg).
atom("palythene",10,nitr). atom("palythene",11..12,oxyg). atom("palythene",13..15,carb).
atom("palythene",16..17,oxyg). atom("palythene",18..19,carb). atom("palythene",24,carb).
bond("palythene",double,1,2). bond("palythene",single,2,3). bond("palythene",single,3,4).
bond("palythene",single,4,5). bond("palythene",single,5,6). bond("palythene",single,1,6).
bond("palythene",single,5,7). bond("palythene",double,3,10). bond("palythene",single,1,8).
bond("palythene",singleS,5,12). bond("palythene",single,7,11). bond("palythene",single,2,9).
bond("palythene",single,9,13). bond("palythene",single,8,14). bond("palythene",single,14,15).
bond("palythene",double,15,16). bond("palythene",single,15,17). bond("palythene",single,10,18).
bond("palythene",double,18,19). bond("palythene",single,19,24).

%*
Shared domain
*%


% Definition of a cyclohexene
atomDomain(cyclohexene,1,carb). atomDomain(cyclohexene,2,carb). atomDomain(cyclohexene,3,carb).
atomDomain(cyclohexene,4,carb). atomDomain(cyclohexene,5,carb). atomDomain(cyclohexene,6,carb).
bondDomain(cyclohexene,double,1,2). bondDomain(cyclohexene,single,2,3). bondDomain(cyclohexene,single,3,4).
bondDomain(cyclohexene,single,4,5). bondDomain(cyclohexene,single,5,6). bondDomain(cyclohexene,single,1,6).

%* Known reactions
%%%%%%%%%%%%%%%%%%%
reaction(Reaction type (name), Compound 1 [, Active site atom number], [Compound 2 , Active site atom number], Resulting compound)
*%

% Known sterol reactions (inferred from other organisms)

% Mycosporine amino-acids known reactions.

% Reactions from PWY-7751.

reaction(rxn_17372, "sedoheptulose-7-phosphate", "R-demethyl-4-deoxygadusol").

reaction(rxn_17895, "R-demethyl-4-deoxygadusol", "S-demethyl-4-deoxygadusol").

reaction(rxn_17366, "R-demethyl-4-deoxygadusol", "R-4-deoxygadusol").

reaction(rxn_17370, "R-4-deoxygadusol", "S-4-deoxygadusol").

reaction(rxn_17896, "S-demethyl-4-deoxygadusol", "S-4-deoxygadusol").

reaction(aminoacid_C_1_transfer, "S-4-deoxygadusol", "mycosporin-glycine").

reaction(aminoacid_C_3_transfer_serine,"mycosporin-glycine","shinorine").

% Extended reaction from serine to threonine (as proposed in Brawley et al., 2017)
reaction(aminoacid_C_3_transfer_threonine,"mycosporin-glycine","porphyra-334").

% Other reactions from bibliography (Carreto and Carignan, 2011)
reaction(hydrogenation,"shinorine","palythinol").

reaction(demethylation,"palythinol", "asterina-330").

reaction(dehydration,"porphyra-334", "z-palythenic acid").

reaction(decarboxylation_1,"z-palythenic acid","palythene").

reaction(decarboxylation_2,"shinorine","asterina-330").

reaction(hydrolysis,"palythene","palythine").

% MZ expected in mycosporine amino-acids pathway.

mzfiltering(2702720).
mzfiltering(3023117).

% defining absent molecules

absentmolecules("z-palythenic acid").
absentmolecules("palythinol").


% Source molecule for inference.

source("sedoheptulose-7-phosphate").

% Initiation of incremental grounding.

goal(pathway("sedoheptulose-7-phosphate","palythine")).
