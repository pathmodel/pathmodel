%*This is work in progress for a paper by Girard et al., to be submitted to Frontiers in Plant Science, and has not yet been peer reviewed. 
*%


%*
Data
Describing the starting set of metabolites

atom(Compound name, Atom number, Atom type).
bond(Compound name, Chemical bond type, Atom number1, Greater Atom number2).
*%

% Sterol from PWY-2541

atom("cycloartenol",1..30,carb). atom("cycloartenol",31,oxyg).
bond("cycloartenol",single,1,2). bond("cycloartenol",single,1,10). bond("cycloartenol",single,2,3).
bond("cycloartenol",single,3,4). bond("cycloartenol",singleR,3,31). bond("cycloartenol",single,4,5).
bond("cycloartenol",singleR,4,29). bond("cycloartenol",singleS,4,28). bond("cycloartenol",single,5,6).
bond("cycloartenol",single,5,10). bond("cycloartenol",single,6,7). bond("cycloartenol",single,7,8).
bond("cycloartenol",single,8,9). bond("cycloartenol",single,8,14). bond("cycloartenol",single,9,10).
bond("cycloartenol",single,9,11).bond("cycloartenol",singleR,9,19). bond("cycloartenol",singleR,10,19).
bond("cycloartenol",single,11,12). bond("cycloartenol",single,12,13). bond("cycloartenol",single,13,14).
bond("cycloartenol",single,14,15). bond("cycloartenol",singleS,14,30). bond("cycloartenol",single,15,16).
bond("cycloartenol",single,16,17). bond("cycloartenol",single,13,17). bond("cycloartenol",singleR,13,18).
bond("cycloartenol",singleR,17,20). bond("cycloartenol",singleS,20,21). bond("cycloartenol",single,20,22).
bond("cycloartenol",single,22,23). bond("cycloartenol",single,23,24). bond("cycloartenol",double,24,25).
bond("cycloartenol",single,25,26). bond("cycloartenol",single,25,27).

% Sterols from PWY-8191

atom("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",1..30,carb). atom("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",31..33,oxyg).
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,1,2). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,1,10). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,2,3).
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,3,4). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",singleR,3,31). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,4,5).
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",singleR,4,29). 
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,29,32). 
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",double,29,33). 
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",singleS,4,28). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,5,6).
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,5,10). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,6,7). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,7,8).
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,8,9). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,8,14). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,9,10).
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,9,11).bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",singleR,9,19). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",singleR,10,19).
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,11,12). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,12,13). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,13,14).
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,14,15). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",singleS,14,30). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,15,16).
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,16,17). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,13,17). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",singleR,13,18).
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",singleR,17,20). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",singleS,20,21). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,20,22).
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,22,23). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,23,24). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",double,24,25).
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,25,26). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,25,27).

atom("31-norcycloartenone",1..28,carb). atom("31-norcycloartenone",30,carb). atom("31-norcycloartenone",31,oxyg).
bond("31-norcycloartenone",single,1,2). bond("31-norcycloartenone",single,1,10). bond("31-norcycloartenone",single,2,3).
bond("31-norcycloartenone",single,3,4). bond("31-norcycloartenone",double,3,31). bond("31-norcycloartenone",single,4,5).
bond("31-norcycloartenone",singleS,4,28). bond("31-norcycloartenone",single,5,6).
bond("31-norcycloartenone",single,5,10). bond("31-norcycloartenone",single,6,7). bond("31-norcycloartenone",single,7,8).
bond("31-norcycloartenone",single,8,9). bond("31-norcycloartenone",single,8,14). bond("31-norcycloartenone",single,9,10).
bond("31-norcycloartenone",single,9,11).bond("31-norcycloartenone",singleR,9,19). bond("31-norcycloartenone",singleR,10,19).
bond("31-norcycloartenone",single,11,12). bond("31-norcycloartenone",single,12,13). bond("31-norcycloartenone",single,13,14).
bond("31-norcycloartenone",single,14,15). bond("31-norcycloartenone",singleS,14,30). bond("31-norcycloartenone",single,15,16).
bond("31-norcycloartenone",single,16,17). bond("31-norcycloartenone",single,13,17). bond("31-norcycloartenone",singleR,13,18).
bond("31-norcycloartenone",singleR,17,20). bond("31-norcycloartenone",singleS,20,21). bond("31-norcycloartenone",single,20,22).
bond("31-norcycloartenone",single,22,23). bond("31-norcycloartenone",single,23,24). bond("31-norcycloartenone",double,24,25).
bond("31-norcycloartenone",single,25,26). bond("31-norcycloartenone",single,25,27).

% New inferred intermediates

atom("Δ1-2,31-norcycloartenone",1..28,carb). atom("Δ1-2,31-norcycloartenone",30,carb). atom("Δ1-2,31-norcycloartenone",31,oxyg).
bond("Δ1-2,31-norcycloartenone",double,1,2). bond("Δ1-2,31-norcycloartenone",single,1,10). bond("Δ1-2,31-norcycloartenone",single,2,3).
bond("Δ1-2,31-norcycloartenone",single,3,4). bond("Δ1-2,31-norcycloartenone",double,3,31). bond("Δ1-2,31-norcycloartenone",single,4,5).
bond("Δ1-2,31-norcycloartenone",singleS,4,28). bond("Δ1-2,31-norcycloartenone",single,5,6).
bond("Δ1-2,31-norcycloartenone",single,5,10). bond("Δ1-2,31-norcycloartenone",single,6,7). bond("Δ1-2,31-norcycloartenone",single,7,8).
bond("Δ1-2,31-norcycloartenone",single,8,9). bond("Δ1-2,31-norcycloartenone",single,8,14). bond("Δ1-2,31-norcycloartenone",single,9,10).
bond("Δ1-2,31-norcycloartenone",single,9,11).bond("Δ1-2,31-norcycloartenone",singleR,9,19). bond("Δ1-2,31-norcycloartenone",singleR,10,19).
bond("Δ1-2,31-norcycloartenone",single,11,12). bond("Δ1-2,31-norcycloartenone",single,12,13). bond("Δ1-2,31-norcycloartenone",single,13,14).
bond("Δ1-2,31-norcycloartenone",single,14,15). bond("Δ1-2,31-norcycloartenone",singleS,14,30). bond("Δ1-2,31-norcycloartenone",single,15,16).
bond("Δ1-2,31-norcycloartenone",single,16,17). bond("Δ1-2,31-norcycloartenone",single,13,17). bond("Δ1-2,31-norcycloartenone",singleR,13,18).
bond("Δ1-2,31-norcycloartenone",singleR,17,20). bond("Δ1-2,31-norcycloartenone",singleS,20,21). bond("Δ1-2,31-norcycloartenone",single,20,22).
bond("Δ1-2,31-norcycloartenone",single,22,23). bond("Δ1-2,31-norcycloartenone",single,23,24). bond("Δ1-2,31-norcycloartenone",double,24,25).
bond("Δ1-2,31-norcycloartenone",single,25,26). bond("Δ1-2,31-norcycloartenone",single,25,27).

atom("23-hydroxy-Δ1-2-31-norcycloartenone",1..28,carb). atom("23-hydroxy-Δ1-2-31-norcycloartenone",30,carb). atom("23-hydroxy-Δ1-2-31-norcycloartenone",31..32,oxyg).
bond("23-hydroxy-Δ1-2-31-norcycloartenone",double,1,2). bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,1,10). bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,2,3).
bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,3,4). bond("23-hydroxy-Δ1-2-31-norcycloartenone",double,3,31). bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,4,5).
bond("23-hydroxy-Δ1-2-31-norcycloartenone",singleS,4,28). bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,5,6).
bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,5,10). bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,6,7). bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,7,8).
bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,8,9). bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,8,14). bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,9,10).
bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,9,11).bond("23-hydroxy-Δ1-2-31-norcycloartenone",singleR,9,19). bond("23-hydroxy-Δ1-2-31-norcycloartenone",singleR,10,19).
bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,11,12). bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,12,13). bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,13,14).
bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,14,15). bond("23-hydroxy-Δ1-2-31-norcycloartenone",singleS,14,30). bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,15,16).
bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,16,17). bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,13,17). bond("23-hydroxy-Δ1-2-31-norcycloartenone",singleR,13,18).
bond("23-hydroxy-Δ1-2-31-norcycloartenone",singleR,17,20). bond("23-hydroxy-Δ1-2-31-norcycloartenone",singleS,20,21). bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,20,22).
bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,22,23). bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,23,24). bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,23,32). bond("23-hydroxy-Δ1-2-31-norcycloartenone",double,24,25).
bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,25,26). bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,25,27).

% Mozukulins A and B from Chen et al., 2016

atom("mozukulin A",1..28,carb). atom("mozukulin A",30,carb). atom("mozukulin A",31..32,oxyg).
bond("mozukulin A",double,1,2). bond("mozukulin A",single,1,10). bond("mozukulin A",single,2,3).
bond("mozukulin A",single,3,4). bond("mozukulin A",double,3,31). bond("mozukulin A",single,4,5).
bond("mozukulin A",singleS,4,28). bond("mozukulin A",single,5,6).
bond("mozukulin A",single,5,10). bond("mozukulin A",single,6,7). bond("mozukulin A",single,7,8).
bond("mozukulin A",single,8,9). bond("mozukulin A",single,8,14). bond("mozukulin A",single,9,10).
bond("mozukulin A",single,9,11).bond("mozukulin A",singleR,9,19). bond("mozukulin A",singleR,10,19).
bond("mozukulin A",single,11,12). bond("mozukulin A",single,12,13). bond("mozukulin A",single,13,14).
bond("mozukulin A",single,14,15). bond("mozukulin A",singleS,14,30). bond("mozukulin A",single,15,16).
bond("mozukulin A",single,16,17). bond("mozukulin A",single,13,17). bond("mozukulin A",singleR,13,18).
bond("mozukulin A",singleR,17,20). bond("mozukulin A",singleS,20,21). bond("mozukulin A",single,20,22).
bond("mozukulin A",single,22,23). bond("mozukulin A",single,23,24). bond("mozukulin A",double,24,25).
bond("mozukulin A",single,25,26). bond("mozukulin A",single,25,27). bond("mozukulin A",double,23,32).


atom("mozukulin B",1..28,carb). atom("mozukulin B",30,carb). atom("mozukulin B",31..32,oxyg).
bond("mozukulin B",double,1,2). bond("mozukulin B",single,1,10). bond("mozukulin B",single,2,3).
bond("mozukulin B",single,3,4). bond("mozukulin B",double,3,31). bond("mozukulin B",single,4,5).
bond("mozukulin B",singleS,4,28). bond("mozukulin B",single,5,6).
bond("mozukulin B",single,5,10). bond("mozukulin B",single,6,7). bond("mozukulin B",single,7,8).
bond("mozukulin B",single,8,9). bond("mozukulin B",single,8,14). bond("mozukulin B",single,9,10).
bond("mozukulin B",single,9,11).bond("mozukulin B",singleR,9,19). bond("mozukulin B",singleR,10,19).
bond("mozukulin B",single,11,12). bond("mozukulin B",single,12,13). bond("mozukulin B",single,13,14).
bond("mozukulin B",single,14,15). bond("mozukulin B",singleS,14,30). bond("mozukulin B",single,15,16).
bond("mozukulin B",single,16,17). bond("mozukulin B",single,13,17). bond("mozukulin B",singleR,13,18).
bond("mozukulin B",singleR,17,20). bond("mozukulin B",singleS,20,21). bond("mozukulin B",single,20,22).
bond("mozukulin B",single,22,23). bond("mozukulin B",single,23,24). bond("mozukulin B",single,24,25).
bond("mozukulin B",single,25,26). bond("mozukulin B",single,25,27). bond("mozukulin B",double,23,32).


%*
Shared domain
Definition of sterane
Based on the wikipedia structure: https://fr.wikipedia.org/wiki/St%C3%A9rane#/media/File:Steran_num_ABCD.svg
*%

atomDomain(sterane,1,carb). atomDomain(sterane,2,carb). atomDomain(sterane,3,carb).
atomDomain(sterane,4,carb). atomDomain(sterane,5,carb). atomDomain(sterane,6,carb).
atomDomain(sterane,7,carb). atomDomain(sterane,8,carb). atomDomain(sterane,9,carb).
atomDomain(sterane,10,carb). atomDomain(sterane,11,carb). atomDomain(sterane,12,carb).
atomDomain(sterane,13,carb). atomDomain(sterane,14,carb). atomDomain(sterane,15,carb).
atomDomain(sterane,16,carb). atomDomain(sterane,17,carb).
bondDomain(sterane,variable,1,2). bondDomain(sterane,variable,1,10). bondDomain(sterane,variable,2,3).
bondDomain(sterane,variable,3,4). bondDomain(sterane,variable,4,5). bondDomain(sterane,variable,5,6).
bondDomain(sterane,variable,5,10). bondDomain(sterane,variable,6,7). bondDomain(sterane,variable,7,8).
bondDomain(sterane,variable,8,9). bondDomain(sterane,variable,8,14). bondDomain(sterane,variable,9,10).
bondDomain(sterane,variable,9,11). bondDomain(sterane,variable,11,12). bondDomain(sterane,variable,12,13).
bondDomain(sterane,variable,13,14). bondDomain(sterane,variable,13,17). bondDomain(sterane,variable,14,15).
bondDomain(sterane,variable,15,16). bondDomain(sterane,variable,16,17).


%* Known reactions
%%%%%%%%%%%%%%%%%%%
reaction(Reaction type (name), Compound 1 [, Active site atom number], [Compound 2 , Active site atom number], Resulting compound)
*%

% Reactions from PWY-8191: cholesterol biosynthesis (algae, late side-chain reductase) 

reaction(rxn_21826, "cycloartenol","(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol").
reaction(rxn_21827, "(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol", "(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol").
reaction(rxn_21828, "(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol", "(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol").
reaction(rxn_21830, "(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol", "31-norcycloartenone").

% Information necessary to infer new Δ1-2 reduction
% PWY-6944: androstenedione degradation I (aerobic)
reaction(rxn_12714,"androst-4-ene-3,17-dione","androsta-1,4-diene-3,17-dione").
% corresponding metacyc general reactions (EC 1.3.99.4)
reaction(rxn_3_OXOSTEROID_1_DEHYDROGENASE_RXN,"a 3-oxosteroid", "a 3-oxo-Δ1-steroid").

% Information necessary to infer new 23 hydroxylation
reaction(rxn_11530, "(22α)-hydroxy-campest-4-en-3-one", "(22R,23R)-22,23-dihydroxy-campest-4-en-3-one").

%*
Information necessary to infer new 23 dehydrogenation
Here we have to define the general concept of steroid dehydrogenation based on the numerous occurrences on various positions: 3, 7, 11, 12, 17, 20 
https://metacyc.org/META/substring-search?type=NIL&object=hydroxysteroid+dehydrogenase&quickSearch=Quick+Search#ENZYME
The candidate enzyme could belong either to the short-chain dehydrogenase family (SDR) or to the aldo-ketoreductases. 
Alternatively, the reaction could also be performed by a CYP enzyme in a CYP85 or CYP90A-like manner.
*%

% PWY66-4 and PWY-8191
reaction(rxn66_28, "desmosterol", "cholesterol").


% Source molecule for inference.

source("cycloartenol").


% Initiation of incremental grounding.
init(pathway("cycloartenol","cholesterol")).
goal(pathway("cycloartenol","mozukulin B")).


%* Expected inferred reactions: 

reaction(delta1_2_ketoreduction,31-norcycloartenone,"Δ1-2,31-norcycloartenone").
reaction(23-hydroxylation, "Δ1-2,31-norcycloartenone", "23-hydroxy-Δ1-2-31-norcycloartenone").
reaction(23_hydroxysteroid_reduction, "23-hydroxy-Δ1-2-31-norcycloartenone", "mozukulin A").
reaction(delta24reduction, "mozukulin A", "mozukulin B"). 
*%