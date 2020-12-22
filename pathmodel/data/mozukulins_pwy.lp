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
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",singleR,4,29). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",singleS,4,28). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,5,6).
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,5,10). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,6,7). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,7,8).
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,8,9). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,8,14). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,9,10).
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,9,11).bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",singleR,9,19). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",singleR,10,19).
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,11,12). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,12,13). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,13,14).
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,14,15). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",singleS,14,30). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,15,16).
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,16,17). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,13,17). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",singleR,13,18).
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",singleR,17,20). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",singleS,20,21). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,20,22).
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,22,23). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,23,24). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",double,24,25).
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,25,26). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,25,27). bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",single,29,32).
bond("(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol",double,29,33).

atom("31-norcycloartenone",1..28,carb). atom("31-norcycloartenone",30,carb). atom("31-norcycloartenone",31,oxyg).
bond("31-norcycloartenone",single,1,2). bond("31-norcycloartenone",single,1,10). bond("31-norcycloartenone",single,2,3).
bond("31-norcycloartenone",single,3,4). bond("31-norcycloartenone",double,3,31). bond("31-norcycloartenone",single,4,5).
bond("31-norcycloartenone",singleS,4,28). bond("31-norcycloartenone",single,5,6). bond("31-norcycloartenone",single,5,10).
bond("31-norcycloartenone",single,6,7). bond("31-norcycloartenone",single,7,8). bond("31-norcycloartenone",single,8,9).
bond("31-norcycloartenone",single,8,14). bond("31-norcycloartenone",single,9,10). bond("31-norcycloartenone",single,9,11).
bond("31-norcycloartenone",singleR,9,19). bond("31-norcycloartenone",singleR,10,19). bond("31-norcycloartenone",single,11,12).
bond("31-norcycloartenone",single,12,13). bond("31-norcycloartenone",single,13,14). bond("31-norcycloartenone",single,14,15).
bond("31-norcycloartenone",singleS,14,30). bond("31-norcycloartenone",single,15,16). bond("31-norcycloartenone",single,16,17).
bond("31-norcycloartenone",single,13,17). bond("31-norcycloartenone",singleR,13,18). bond("31-norcycloartenone",singleR,17,20).
bond("31-norcycloartenone",singleS,20,21). bond("31-norcycloartenone",single,20,22). bond("31-norcycloartenone",single,22,23).
bond("31-norcycloartenone",single,23,24). bond("31-norcycloartenone",double,24,25). bond("31-norcycloartenone",single,25,26).
bond("31-norcycloartenone",single,25,27).

atom("31-norcycloartenol",1..28,carb). atom("31-norcycloartenol",30,carb). atom("31-norcycloartenol",31,oxyg).
bond("31-norcycloartenol",single,1,2). bond("31-norcycloartenol",single,1,10). bond("31-norcycloartenol",single,2,3).
bond("31-norcycloartenol",single,3,4). bond("31-norcycloartenol",double,3,31). bond("31-norcycloartenol",single,4,5).
bond("31-norcycloartenol",singleS,4,28). bond("31-norcycloartenol",single,5,6). bond("31-norcycloartenol",single,5,10).
bond("31-norcycloartenol",single,6,7). bond("31-norcycloartenol",single,7,8). bond("31-norcycloartenol",double,8,9).
bond("31-norcycloartenol",single,8,14). bond("31-norcycloartenol",single,9,10). bond("31-norcycloartenol",single,9,11).
bond("31-norcycloartenol",singleR,10,19). bond("31-norcycloartenol",single,11,12). bond("31-norcycloartenol",single,12,13).
bond("31-norcycloartenol",single,13,14). bond("31-norcycloartenol",single,14,15). bond("31-norcycloartenol",single,15,16).
bond("31-norcycloartenol",single,16,17). bond("31-norcycloartenol",single,13,17). bond("31-norcycloartenol",singleR,13,18).
bond("31-norcycloartenol",singleR,17,20). bond("31-norcycloartenol",singleS,20,21). bond("31-norcycloartenol",single,20,22).
bond("31-norcycloartenol",single,22,23). bond("31-norcycloartenol",single,23,24). bond("31-norcycloartenol",double,24,25).
bond("31-norcycloartenol",single,25,26). bond("31-norcycloartenol",single,25,27).

atom("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",1..28,carb). atom("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",30,carb). atom("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",31,oxyg).
bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",single,1,2). bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",single,1,10). bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",single,2,3).
bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",single,3,4). bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",double,3,31). bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",single,4,5).
bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",singleS,4,28). bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",single,5,6). bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",single,5,10).
bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",single,6,7). bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",single,7,8). bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",double,8,9).
bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",single,8,14). bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",single,9,10). bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",single,9,11).
bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",singleR,10,19). bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",single,11,12). bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",single,12,13).
bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",single,13,14). bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",single,14,15). bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",single,15,16).
bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",single,16,17). bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",single,13,17). bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",singleR,13,18).
bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",singleR,17,20). bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",singleS,20,21). bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",single,20,22).
bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",single,22,23). bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",single,23,24). bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",double,24,25).
bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",single,25,26). bond("4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol",single,25,27).

atom("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",1..28,carb). atom("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",30,carb). atom("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",31,oxyg).
atom("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",34,oxyg).
bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,1,2). bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,1,10). bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,2,3).
bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,3,4). bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",double,3,31). bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,4,5).
bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",singleS,4,28). bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,5,6). bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,5,10).
bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,6,7). bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,7,8). bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",double,8,9).
bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,8,14). bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,9,10). bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,9,11).
bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",singleR,10,19). bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,11,12). bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,12,13).
bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,13,14). bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,14,15). bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,15,16).
bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,16,17). bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,13,17). bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",singleR,13,18).
bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",singleR,17,20). bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",singleS,20,21). bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,20,22).
bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,22,23). bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,23,24). bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",double,24,25).
bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,25,26). bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,25,27). bond("4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,29,34).

atom("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",1..28,carb). atom("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",30,carb). atom("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",31,oxyg).
atom("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",34,oxyg).
bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,1,2). bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,1,10). bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,2,3).
bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,3,4). bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",double,3,31). bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,4,5).
bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",singleS,4,28). bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,5,6). bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,5,10).
bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,6,7). bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,7,8). bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",double,8,9).
bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,8,14). bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,9,10). bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,9,11).
bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",singleR,10,19). bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,11,12). bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,12,13).
bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,13,14). bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,14,15). bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,15,16).
bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,16,17). bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,13,17). bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",singleR,13,18).
bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",singleR,17,20). bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",singleS,20,21). bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,20,22).
bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,22,23). bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,23,24). bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",double,24,25).
bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,25,26). bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",single,25,27). bond("4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol",double,29,34).

atom("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",1..28,carb). atom("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",31,oxyg).
bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",single,1,2). bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",single,1,10). bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",single,2,3).
bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",single,3,4). bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",double,3,31). bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",single,4,5).
bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",singleS,4,28). bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",single,5,6). bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",single,5,10).
bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",single,6,7). bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",single,7,8). bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",double,8,9).
bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",single,8,14). bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",single,9,10). bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",single,9,11).
bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",singleR,10,19). bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",single,11,12). bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",single,12,13).
bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",single,13,14). bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",double,14,15). bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",single,15,16).
bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",single,16,17). bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",single,13,17). bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",singleR,13,18).
bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",singleR,17,20). bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",singleS,20,21). bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",single,20,22).
bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",single,22,23). bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",single,23,24). bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",double,24,25).
bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",single,25,26). bond("4α-methyl-5α-cholesta-8,14,24-trien-3β-ol",single,25,27).

atom("4α-methyl-5α-cholesta-8,24-dien-3β-ol",1..28,carb). atom("4α-methyl-5α-cholesta-8,24-dien-3β-ol",31,oxyg).
bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",single,1,2). bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",single,1,10). bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",single,2,3).
bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",single,3,4). bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",double,3,31). bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",single,4,5).
bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",singleS,4,28). bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",single,5,6). bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",single,5,10).
bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",single,6,7). bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",single,7,8). bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",double,8,9).
bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",single,8,14). bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",single,9,10). bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",single,9,11).
bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",singleR,10,19). bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",single,11,12). bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",single,12,13).
bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",single,13,14). bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",single,14,15). bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",single,15,16).
bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",single,16,17). bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",single,13,17). bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",singleR,13,18).
bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",singleR,17,20). bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",singleS,20,21). bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",single,20,22).
bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",single,22,23). bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",single,23,24). bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",double,24,25).
bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",single,25,26). bond("4α-methyl-5α-cholesta-8,24-dien-3β-ol",single,25,27).

atom("4α-methyl-5α-cholesta-7,24-dien-3β-ol",1..28,carb). atom("4α-methyl-5α-cholesta-7,24-dien-3β-ol",31,oxyg).
bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",single,1,2). bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",single,1,10). bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",single,2,3).
bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",single,3,4). bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",double,3,31). bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",single,4,5).
bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",singleS,4,28). bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",single,5,6). bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",single,5,10).
bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",single,6,7). bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",double,7,8). bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",single,8,9).
bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",single,8,14). bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",single,9,10). bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",single,9,11).
bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",singleR,10,19). bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",single,11,12). bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",single,12,13).
bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",single,13,14). bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",single,14,15). bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",single,15,16).
bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",single,16,17). bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",single,13,17). bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",singleR,13,18).
bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",singleR,17,20). bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",singleS,20,21). bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",single,20,22).
bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",single,22,23). bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",single,23,24). bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",double,24,25).
bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",single,25,26). bond("4α-methyl-5α-cholesta-7,24-dien-3β-ol",single,25,27).

atom("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",1..28,carb). atom("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",31,oxyg). atom("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",34,oxyg).
bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",single,1,2). bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",single,1,10). bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",single,2,3).
bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",single,3,4). bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",double,3,31). bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",single,4,5).
bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",singleS,4,28). bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",single,5,6). bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",single,5,10).
bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",single,6,7). bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",double,7,8). bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",single,8,9).
bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",single,8,14). bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",single,9,10). bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",single,9,11).
bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",singleR,10,19). bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",single,11,12). bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",single,12,13).
bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",single,13,14). bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",single,14,15). bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",single,15,16).
bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",single,16,17). bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",single,13,17). bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",singleR,13,18).
bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",singleR,17,20). bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",singleS,20,21). bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",single,20,22).
bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",single,22,23). bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",single,23,24). bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",double,24,25).
bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",single,25,26). bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",single,25,27). bond("4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol",single,29,34).

atom("4α-formyl-5α-cholest-7,24-dien-3β-ol",1..28,carb). atom("4α-formyl-5α-cholest-7,24-dien-3β-ol",31,oxyg). atom("4α-formyl-5α-cholest-7,24-dien-3β-ol",34,oxyg).
bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",single,1,2). bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",single,1,10). bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",single,2,3).
bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",single,3,4). bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",double,3,31). bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",single,4,5).
bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",singleS,4,28). bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",single,5,6). bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",single,5,10).
bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",single,6,7). bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",double,7,8). bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",single,8,9).
bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",single,8,14). bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",single,9,10). bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",single,9,11).
bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",singleR,10,19). bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",single,11,12). bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",single,12,13).
bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",single,13,14). bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",single,14,15). bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",single,15,16).
bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",single,16,17). bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",single,13,17). bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",singleR,13,18).
bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",singleR,17,20). bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",singleS,20,21). bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",single,20,22).
bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",single,22,23). bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",single,23,24). bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",double,24,25).
bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",single,25,26). bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",single,25,27). bond("4α-formyl-5α-cholest-7,24-dien-3β-ol",double,29,34).

atom("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",1..28,carb). atom("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",31,oxyg). atom("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",34..35,oxyg).
bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",single,1,2). bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",single,1,10). bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",single,2,3).
bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",single,3,4). bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",double,3,31). bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",single,4,5).
bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",singleS,4,28). bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",single,5,6). bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",single,5,10).
bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",single,6,7). bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",double,7,8). bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",single,8,9).
bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",single,8,14). bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",single,9,10). bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",single,9,11).
bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",singleR,10,19). bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",single,11,12). bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",single,12,13).
bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",single,13,14). bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",single,14,15). bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",single,15,16).
bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",single,16,17). bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",single,13,17). bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",singleR,13,18).
bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",singleR,17,20). bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",singleS,20,21). bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",single,20,22).
bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",single,22,23). bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",single,23,24). bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",double,24,25).
bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",single,25,26). bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",single,25,27).bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",double,29,34).
bond("4α-carboxy-5α-cholesta-7,24-dien-3β-ol",single,29,35).

atom("5α-cholesta-7,24-dien-3-one",1..27,carb). atom("5α-cholesta-7,24-dien-3-one",31,oxyg).
bond("5α-cholesta-7,24-dien-3-one",single,1,2). bond("5α-cholesta-7,24-dien-3-one",single,1,10). bond("5α-cholesta-7,24-dien-3-one",single,2,3).
bond("5α-cholesta-7,24-dien-3-one",single,3,4). bond("5α-cholesta-7,24-dien-3-one",double,3,31). bond("5α-cholesta-7,24-dien-3-one",single,4,5).
bond("5α-cholesta-7,24-dien-3-one",single,5,6). bond("5α-cholesta-7,24-dien-3-one",single,5,10). bond("5α-cholesta-7,24-dien-3-one",single,6,7).
bond("5α-cholesta-7,24-dien-3-one",double,7,8). bond("5α-cholesta-7,24-dien-3-one",single,8,9). bond("5α-cholesta-7,24-dien-3-one",single,8,14).
bond("5α-cholesta-7,24-dien-3-one",single,9,10). bond("5α-cholesta-7,24-dien-3-one",single,9,11). bond("5α-cholesta-7,24-dien-3-one",singleR,10,19).
bond("5α-cholesta-7,24-dien-3-one",single,11,12). bond("5α-cholesta-7,24-dien-3-one",single,12,13). bond("5α-cholesta-7,24-dien-3-one",single,13,14).
bond("5α-cholesta-7,24-dien-3-one",single,14,15). bond("5α-cholesta-7,24-dien-3-one",single,15,16). bond("5α-cholesta-7,24-dien-3-one",single,16,17).
bond("5α-cholesta-7,24-dien-3-one",single,13,17). bond("5α-cholesta-7,24-dien-3-one",singleR,13,18). bond("5α-cholesta-7,24-dien-3-one",singleR,17,20).
bond("5α-cholesta-7,24-dien-3-one",singleS,20,21). bond("5α-cholesta-7,24-dien-3-one",single,20,22). bond("5α-cholesta-7,24-dien-3-one",single,22,23).
bond("5α-cholesta-7,24-dien-3-one",single,23,24). bond("5α-cholesta-7,24-dien-3-one",double,24,25). bond("5α-cholesta-7,24-dien-3-one",single,25,26).
bond("5α-cholesta-7,24-dien-3-one",single,25,27).

atom("5α-cholesta-7,24-dienol",1..27,carb). atom("5α-cholesta-7,24-dienol",31,oxyg).
bond("5α-cholesta-7,24-dienol",single,1,2). bond("5α-cholesta-7,24-dienol",single,1,10). bond("5α-cholesta-7,24-dienol",single,2,3).
bond("5α-cholesta-7,24-dienol",single,3,4). bond("5α-cholesta-7,24-dienol",singleR,3,31). bond("5α-cholesta-7,24-dienol",single,4,5).
bond("5α-cholesta-7,24-dienol",single,5,6). bond("5α-cholesta-7,24-dienol",single,5,10). bond("5α-cholesta-7,24-dienol",single,6,7).
bond("5α-cholesta-7,24-dienol",double,7,8). bond("5α-cholesta-7,24-dienol",single,8,9). bond("5α-cholesta-7,24-dienol",single,8,14).
bond("5α-cholesta-7,24-dienol",single,9,10). bond("5α-cholesta-7,24-dienol",single,9,11). bond("5α-cholesta-7,24-dienol",singleR,10,19).
bond("5α-cholesta-7,24-dienol",single,11,12). bond("5α-cholesta-7,24-dienol",single,12,13). bond("5α-cholesta-7,24-dienol",single,13,14).
bond("5α-cholesta-7,24-dienol",single,14,15). bond("5α-cholesta-7,24-dienol",single,15,16). bond("5α-cholesta-7,24-dienol",single,16,17).
bond("5α-cholesta-7,24-dienol",single,13,17). bond("5α-cholesta-7,24-dienol",singleR,13,18). bond("5α-cholesta-7,24-dienol",singleR,17,20).
bond("5α-cholesta-7,24-dienol",singleS,20,21). bond("5α-cholesta-7,24-dienol",single,20,22). bond("5α-cholesta-7,24-dienol",single,22,23).
bond("5α-cholesta-7,24-dienol",single,23,24). bond("5α-cholesta-7,24-dienol",double,24,25). bond("5α-cholesta-7,24-dienol",single,25,26).
bond("5α-cholesta-7,24-dienol",single,25,27).

atom("7-dehydrodesmosterol",1..27,carb). atom("7-dehydrodesmosterol",31,oxyg).
bond("7-dehydrodesmosterol",single,1,2). bond("7-dehydrodesmosterol",single,1,10). bond("7-dehydrodesmosterol",single,2,3).
bond("7-dehydrodesmosterol",single,3,4). bond("7-dehydrodesmosterol",singleR,3,31). bond("7-dehydrodesmosterol",single,4,5).
bond("7-dehydrodesmosterol",double,5,6). bond("7-dehydrodesmosterol",single,5,10). bond("7-dehydrodesmosterol",single,6,7).
bond("7-dehydrodesmosterol",double,7,8). bond("7-dehydrodesmosterol",single,8,9). bond("7-dehydrodesmosterol",single,8,14).
bond("7-dehydrodesmosterol",single,9,10). bond("7-dehydrodesmosterol",single,9,11). bond("7-dehydrodesmosterol",singleR,10,19).
bond("7-dehydrodesmosterol",single,11,12). bond("7-dehydrodesmosterol",single,12,13). bond("7-dehydrodesmosterol",single,13,14).
bond("7-dehydrodesmosterol",single,14,15). bond("7-dehydrodesmosterol",single,15,16). bond("7-dehydrodesmosterol",single,16,17).
bond("7-dehydrodesmosterol",single,13,17). bond("7-dehydrodesmosterol",singleR,13,18). bond("7-dehydrodesmosterol",singleR,17,20).
bond("7-dehydrodesmosterol",singleS,20,21). bond("7-dehydrodesmosterol",single,20,22). bond("7-dehydrodesmosterol",single,22,23).
bond("7-dehydrodesmosterol",single,23,24). bond("7-dehydrodesmosterol",double,24,25). bond("7-dehydrodesmosterol",single,25,26).
bond("7-dehydrodesmosterol",single,25,27).

atom("desmosterol",1..27,carb). atom("desmosterol",31,oxyg).
bond("desmosterol",single,1,2). bond("desmosterol",single,1,10). bond("desmosterol",single,2,3).
bond("desmosterol",single,3,4). bond("desmosterol",singleR,3,31). bond("desmosterol",single,4,5).
bond("desmosterol",double,5,6). bond("desmosterol",single,5,10). bond("desmosterol",single,6,7).
bond("desmosterol",single,7,8). bond("desmosterol",single,8,9). bond("desmosterol",single,8,14).
bond("desmosterol",single,9,10). bond("desmosterol",single,9,11). bond("desmosterol",singleR,10,19).
bond("desmosterol",single,11,12). bond("desmosterol",single,12,13). bond("desmosterol",single,13,14).
bond("desmosterol",single,14,15). bond("desmosterol",single,15,16). bond("desmosterol",single,16,17).
bond("desmosterol",single,13,17). bond("desmosterol",singleR,13,18). bond("desmosterol",singleR,17,20).
bond("desmosterol",singleS,20,21). bond("desmosterol",single,20,22). bond("desmosterol",single,22,23).
bond("desmosterol",single,23,24). bond("desmosterol",double,24,25). bond("desmosterol",single,25,26).
bond("desmosterol",single,25,27).

atom("cholesterol",1..27,carb). atom("cholesterol",31,oxyg).
bond("cholesterol",single,1,2). bond("cholesterol",single,1,10). bond("cholesterol",single,2,3).
bond("cholesterol",single,3,4). bond("cholesterol",singleR,3,31). bond("cholesterol",single,4,5).
bond("cholesterol",double,5,6). bond("cholesterol",single,5,10). bond("cholesterol",single,6,7).
bond("cholesterol",single,7,8). bond("cholesterol",single,8,9). bond("cholesterol",single,8,14).
bond("cholesterol",single,9,10). bond("cholesterol",single,9,11). bond("cholesterol",singleR,10,19).
bond("cholesterol",single,11,12). bond("cholesterol",single,12,13). bond("cholesterol",single,13,14).
bond("cholesterol",single,14,15). bond("cholesterol",single,15,16). bond("cholesterol",single,16,17).
bond("cholesterol",single,13,17). bond("cholesterol",singleR,13,18). bond("cholesterol",singleR,17,20).
bond("cholesterol",singleS,20,21). bond("cholesterol",single,20,22). bond("cholesterol",single,22,23).
bond("cholesterol",single,23,24). bond("cholesterol",single,24,25). bond("cholesterol",single,25,26).
bond("cholesterol",single,25,27).

% Class compounds for rxn_3_OXOSTEROID_1_DEHYDROGENASE_RXN

atom("a 3-oxosteroid",1..19,carb). atom("a 3-oxosteroid",20,variable). atom("a 3-oxosteroid",31,oxyg).
bond("a 3-oxosteroid",single,1,2). bond("a 3-oxosteroid",single,1,10). bond("a 3-oxosteroid",single,2,3).
bond("a 3-oxosteroid",single,3,4). bond("a 3-oxosteroid",double,3,31). bond("a 3-oxosteroid",single,4,5).
bond("a 3-oxosteroid",single,5,6). bond("a 3-oxosteroid",single,5,10). bond("a 3-oxosteroid",single,6,7).
bond("a 3-oxosteroid",single,7,8). bond("a 3-oxosteroid",single,8,9). bond("a 3-oxosteroid",single,8,14).
bond("a 3-oxosteroid",single,9,10). bond("a 3-oxosteroid",single,9,11). bond("a 3-oxosteroid",single,10,19).
bond("a 3-oxosteroid",single,11,12). bond("a 3-oxosteroid",single,12,13). bond("a 3-oxosteroid",single,13,14).
bond("a 3-oxosteroid",single,14,15). bond("a 3-oxosteroid",single,15,16). bond("a 3-oxosteroid",single,16,17).
bond("a 3-oxosteroid",single,13,17). bond("a 3-oxosteroid",single,13,18). bond("a 3-oxosteroid",single,17,20).

atom("a 3-oxo-Δ1-steroid",1..19,carb). atom("a 3-oxo-Δ1-steroid",20,variable). atom("a 3-oxo-Δ1-steroid",31,oxyg).
bond("a 3-oxo-Δ1-steroid",double,1,2). bond("a 3-oxo-Δ1-steroid",single,1,10). bond("a 3-oxo-Δ1-steroid",single,2,3).
bond("a 3-oxo-Δ1-steroid",single,3,4). bond("a 3-oxo-Δ1-steroid",double,3,31). bond("a 3-oxo-Δ1-steroid",single,4,5).
bond("a 3-oxo-Δ1-steroid",single,5,6). bond("a 3-oxo-Δ1-steroid",single,5,10). bond("a 3-oxo-Δ1-steroid",single,6,7).
bond("a 3-oxo-Δ1-steroid",single,7,8). bond("a 3-oxo-Δ1-steroid",single,8,9). bond("a 3-oxo-Δ1-steroid",single,8,14).
bond("a 3-oxo-Δ1-steroid",single,9,10). bond("a 3-oxo-Δ1-steroid",single,9,11). bond("a 3-oxo-Δ1-steroid",single,10,19).
bond("a 3-oxo-Δ1-steroid",single,11,12). bond("a 3-oxo-Δ1-steroid",single,12,13). bond("a 3-oxo-Δ1-steroid",single,13,14).
bond("a 3-oxo-Δ1-steroid",single,14,15). bond("a 3-oxo-Δ1-steroid",single,15,16). bond("a 3-oxo-Δ1-steroid",single,16,17).
bond("a 3-oxo-Δ1-steroid",single,13,17). bond("a 3-oxo-Δ1-steroid",single,13,18). bond("a 3-oxo-Δ1-steroid",single,17,20).

% PWY-6944: androstenedione degradation I (aerobic)

atom("androst-4-ene-3,17-dione",1..19,carb). atom("androst-4-ene-3,17-dione",20,oxyg). atom("androst-4-ene-3,17-dione",31,oxyg).
bond("androst-4-ene-3,17-dione",single,1,2). bond("androst-4-ene-3,17-dione",single,1,10). bond("androst-4-ene-3,17-dione",single,2,3).
bond("androst-4-ene-3,17-dione",single,3,4). bond("androst-4-ene-3,17-dione",double,3,31). bond("androst-4-ene-3,17-dione",double,4,5).
bond("androst-4-ene-3,17-dione",single,5,6). bond("androst-4-ene-3,17-dione",single,5,10). bond("androst-4-ene-3,17-dione",single,6,7).
bond("androst-4-ene-3,17-dione",single,7,8). bond("androst-4-ene-3,17-dione",single,8,9). bond("androst-4-ene-3,17-dione",single,8,14).
bond("androst-4-ene-3,17-dione",single,9,10). bond("androst-4-ene-3,17-dione",single,9,11). ond("androst-4-ene-3,17-dione",singleR,10,19).
bond("androst-4-ene-3,17-dione",single,11,12). bond("androst-4-ene-3,17-dione",single,12,13). bond("androst-4-ene-3,17-dione",single,13,14).
bond("androst-4-ene-3,17-dione",single,14,15). bond("androst-4-ene-3,17-dione",single,15,16). bond("androst-4-ene-3,17-dione",single,16,17).
bond("androst-4-ene-3,17-dione",single,13,17). bond("androst-4-ene-3,17-dione",singleR,13,18). bond("androst-4-ene-3,17-dione",double,17,20).

atom("androsta-1,4-diene-3,17-dione",1..19,carb). atom("androsta-1,4-diene-3,17-dione",20,oxyg). atom("androsta-1,4-diene-3,17-dione",31,oxyg).
bond("androsta-1,4-diene-3,17-dione",double,1,2). bond("androsta-1,4-diene-3,17-dione",single,1,10). bond("androsta-1,4-diene-3,17-dione",single,2,3).
bond("androsta-1,4-diene-3,17-dione",single,3,4). bond("androsta-1,4-diene-3,17-dione",double,3,31). bond("androsta-1,4-diene-3,17-dione",double,4,5).
bond("androsta-1,4-diene-3,17-dione",single,5,6). bond("androsta-1,4-diene-3,17-dione",single,5,10). bond("androsta-1,4-diene-3,17-dione",single,6,7).
bond("androsta-1,4-diene-3,17-dione",single,7,8). bond("androsta-1,4-diene-3,17-dione",single,8,9). bond("androsta-1,4-diene-3,17-dione",single,8,14).
bond("androsta-1,4-diene-3,17-dione",single,9,10). bond("androsta-1,4-diene-3,17-dione",single,9,11). ond("androsta-1,4-diene-3,17-dione",singleR,10,19).
bond("androsta-1,4-diene-3,17-dione",single,11,12). bond("androsta-1,4-diene-3,17-dione",single,12,13). bond("androsta-1,4-diene-3,17-dione",single,13,14).
bond("androsta-1,4-diene-3,17-dione",single,13,17). bond("androsta-1,4-diene-3,17-dione",singleR,13,18). bond("androsta-1,4-diene-3,17-dione",single,14,15).
bond("androsta-1,4-diene-3,17-dione",single,15,16). bond("androsta-1,4-diene-3,17-dione",single,16,17). bond("androsta-1,4-diene-3,17-dione",double,17,20).

%

atom("campesterol",1..27,carb).  atom("campesterol",30,carb). atom("campesterol",31,oxyg).
atom("campesterol",35,carb).
bond("campesterol",single,1,2). bond("campesterol",single,1,10). bond("campesterol",single,2,3).
bond("campesterol",single,3,4). bond("campesterol",singleR,3,31). bond("campesterol",single,4,5).
bond("campesterol",double,5,6). bond("campesterol",single,5,10). bond("campesterol",single,6,7).
bond("campesterol",single,7,8). bond("campesterol",single,8,9). bond("campesterol",single,8,14).
bond("campesterol",single,9,10). bond("campesterol",single,9,11). bond("campesterol",singleR,10,19).
bond("campesterol",single,11,12). bond("campesterol",single,12,13). bond("campesterol",single,13,14).
bond("campesterol",single,14,15). bond("campesterol",singleS,14,30). bond("campesterol",single,15,16).
bond("campesterol",single,16,17). bond("campesterol",single,13,17). bond("campesterol",singleR,13,18).
bond("campesterol",singleR,17,20). bond("campesterol",singleS,20,21). bond("campesterol",single,20,22).
bond("campesterol",single,22,23). bond("campesterol",single,23,24). bond("campesterol",single,24,25).
bond("campesterol",singleR,24,35). bond("campesterol",single,25,26). bond("campesterol",single,25,27).

atom("(22α)-hydroxy-campesterol",1..27,carb).  atom("(22α)-hydroxy-campesterol",30,carb). atom("(22α)-hydroxy-campesterol",31,oxyg).
atom("(22α)-hydroxy-campesterol",34,oxyg). atom("(22α)-hydroxy-campesterol",35,carb).
bond("(22α)-hydroxy-campesterol",single,1,2). bond("(22α)-hydroxy-campesterol",single,1,10). bond("(22α)-hydroxy-campesterol",single,2,3).
bond("(22α)-hydroxy-campesterol",single,3,4). bond("(22α)-hydroxy-campesterol",singleR,3,31). bond("(22α)-hydroxy-campesterol",single,4,5).
bond("(22α)-hydroxy-campesterol",double,5,6). bond("(22α)-hydroxy-campesterol",single,5,10). bond("(22α)-hydroxy-campesterol",single,6,7).
bond("(22α)-hydroxy-campesterol",single,7,8). bond("(22α)-hydroxy-campesterol",single,8,9). bond("(22α)-hydroxy-campesterol",single,8,14).
bond("(22α)-hydroxy-campesterol",single,9,10). bond("(22α)-hydroxy-campesterol",single,9,11). bond("(22α)-hydroxy-campesterol",singleR,10,19).
bond("(22α)-hydroxy-campesterol",single,11,12). bond("(22α)-hydroxy-campesterol",single,12,13). bond("(22α)-hydroxy-campesterol",single,13,14).
bond("(22α)-hydroxy-campesterol",single,14,15). bond("(22α)-hydroxy-campesterol",singleS,14,30). bond("(22α)-hydroxy-campesterol",single,15,16).
bond("(22α)-hydroxy-campesterol",single,16,17). bond("(22α)-hydroxy-campesterol",single,13,17). bond("(22α)-hydroxy-campesterol",singleR,13,18).
bond("(22α)-hydroxy-campesterol",singleR,17,20). bond("(22α)-hydroxy-campesterol",singleS,20,21). bond("(22α)-hydroxy-campesterol",single,20,22).
bond("(22α)-hydroxy-campesterol",singleR,22,34). bond("(22α)-hydroxy-campesterol",single,22,23). bond("(22α)-hydroxy-campesterol",single,23,24).
bond("(22α)-hydroxy-campesterol",single,24,25). bond("(22α)-hydroxy-campesterol",singleR,24,35). bond("(22α)-hydroxy-campesterol",single,25,26).
bond("(22α)-hydroxy-campesterol",single,25,27).

atom("(22R,23R)-22,23-dihydroxycampesterol",1..27,carb).  atom("(22R,23R)-22,23-dihydroxycampesterol",30,carb). atom("(22R,23R)-22,23-dihydroxycampesterol",31,oxyg).
atom("(22R,23R)-22,23-dihydroxycampesterol",32,oxyg). atom("(22R,23R)-22,23-dihydroxycampesterol",34,oxyg). atom("(22R,23R)-22,23-dihydroxycampesterol",35,carb).
bond("(22R,23R)-22,23-dihydroxycampesterol",single,1,2). bond("(22R,23R)-22,23-dihydroxycampesterol",single,1,10). bond("(22R,23R)-22,23-dihydroxycampesterol",single,2,3).
bond("(22R,23R)-22,23-dihydroxycampesterol",single,3,4). bond("(22R,23R)-22,23-dihydroxycampesterol",singleR,3,31). bond("(22R,23R)-22,23-dihydroxycampesterol",single,4,5).
bond("(22R,23R)-22,23-dihydroxycampesterol",double,5,6). bond("(22R,23R)-22,23-dihydroxycampesterol",single,5,10). bond("(22R,23R)-22,23-dihydroxycampesterol",single,6,7).
bond("(22R,23R)-22,23-dihydroxycampesterol",single,7,8). bond("(22R,23R)-22,23-dihydroxycampesterol",single,8,9). bond("(22R,23R)-22,23-dihydroxycampesterol",single,8,14).
bond("(22R,23R)-22,23-dihydroxycampesterol",single,9,10). bond("(22R,23R)-22,23-dihydroxycampesterol",single,9,11). bond("(22R,23R)-22,23-dihydroxycampesterol",singleR,10,19).
bond("(22R,23R)-22,23-dihydroxycampesterol",single,11,12). bond("(22R,23R)-22,23-dihydroxycampesterol",single,12,13). bond("(22R,23R)-22,23-dihydroxycampesterol",single,13,14).
bond("(22R,23R)-22,23-dihydroxycampesterol",single,14,15). bond("(22R,23R)-22,23-dihydroxycampesterol",singleS,14,30). bond("(22R,23R)-22,23-dihydroxycampesterol",single,15,16).
bond("(22R,23R)-22,23-dihydroxycampesterol",single,16,17). bond("(22R,23R)-22,23-dihydroxycampesterol",single,13,17). bond("(22R,23R)-22,23-dihydroxycampesterol",singleR,13,18).
bond("(22R,23R)-22,23-dihydroxycampesterol",singleR,17,20). bond("(22R,23R)-22,23-dihydroxycampesterol",singleS,20,21). bond("(22R,23R)-22,23-dihydroxycampesterol",single,20,22).
bond("(22R,23R)-22,23-dihydroxycampesterol",singleR,22,34). bond("(22R,23R)-22,23-dihydroxycampesterol",single,22,23). bond("(22R,23R)-22,23-dihydroxycampesterol",single,23,24).
bond("(22R,23R)-22,23-dihydroxycampesterol",singleR,23,32). bond("(22R,23R)-22,23-dihydroxycampesterol",single,24,25). bond("(22R,23R)-22,23-dihydroxycampesterol",singleR,24,35).
bond("(22R,23R)-22,23-dihydroxycampesterol",single,25,26). bond("(22R,23R)-22,23-dihydroxycampesterol",single,25,27).

atom("campest-4-en-3β-ol",1..27,carb).  atom("campest-4-en-3β-ol",30,carb). atom("campest-4-en-3β-ol",31,oxyg).
atom("campest-4-en-3β-ol",35,carb).
bond("campest-4-en-3β-ol",single,1,2). bond("campest-4-en-3β-ol",single,1,10). bond("campest-4-en-3β-ol",single,2,3).
bond("campest-4-en-3β-ol",single,3,4). bond("campest-4-en-3β-ol",singleR,3,31). bond("campest-4-en-3β-ol",double,4,5).
bond("campest-4-en-3β-ol",single,5,6). bond("campest-4-en-3β-ol",single,5,10). bond("campest-4-en-3β-ol",single,6,7).
bond("campest-4-en-3β-ol",single,7,8). bond("campest-4-en-3β-ol",single,8,9). bond("campest-4-en-3β-ol",single,8,14).
bond("campest-4-en-3β-ol",single,9,10). bond("campest-4-en-3β-ol",single,9,11). bond("campest-4-en-3β-ol",singleR,10,19).
bond("campest-4-en-3β-ol",single,11,12). bond("campest-4-en-3β-ol",single,12,13). bond("campest-4-en-3β-ol",single,13,14).
bond("campest-4-en-3β-ol",single,14,15). bond("campest-4-en-3β-ol",singleS,14,30). bond("campest-4-en-3β-ol",single,15,16).
bond("campest-4-en-3β-ol",single,16,17). bond("campest-4-en-3β-ol",single,13,17). bond("campest-4-en-3β-ol",singleR,13,18).
bond("campest-4-en-3β-ol",singleR,17,20). bond("campest-4-en-3β-ol",singleS,20,21). bond("campest-4-en-3β-ol",single,20,22).
bond("campest-4-en-3β-ol",single,22,23). bond("campest-4-en-3β-ol",single,23,24). bond("campest-4-en-3β-ol",single,24,25).
bond("campest-4-en-3β-ol",singleR,24,35). bond("campest-4-en-3β-ol",single,25,26). bond("campest-4-en-3β-ol",single,25,27).

atom("campest-4-en-3-one",1..27,carb).  atom("campest-4-en-3-one",30,carb). atom("campest-4-en-3-one",31,oxyg).
atom("campest-4-en-3-one",35,carb).
bond("campest-4-en-3-one",single,1,2). bond("campest-4-en-3-one",single,1,10). bond("campest-4-en-3-one",single,2,3).
bond("campest-4-en-3-one",single,3,4). bond("campest-4-en-3-one",double,3,31). bond("campest-4-en-3-one",double,4,5).
bond("campest-4-en-3-one",single,5,6). bond("campest-4-en-3-one",single,5,10). bond("campest-4-en-3-one",single,6,7).
bond("campest-4-en-3-one",single,7,8). bond("campest-4-en-3-one",single,8,9). bond("campest-4-en-3-one",single,8,14).
bond("campest-4-en-3-one",single,9,10). bond("campest-4-en-3-one",single,9,11). bond("campest-4-en-3-one",singleR,10,19).
bond("campest-4-en-3-one",single,11,12). bond("campest-4-en-3-one",single,12,13). bond("campest-4-en-3-one",single,13,14).
bond("campest-4-en-3-one",single,14,15). bond("campest-4-en-3-one",singleS,14,30). bond("campest-4-en-3-one",single,15,16).
bond("campest-4-en-3-one",single,16,17). bond("campest-4-en-3-one",single,13,17). bond("campest-4-en-3-one",singleR,13,18).
bond("campest-4-en-3-one",singleR,17,20). bond("campest-4-en-3-one",singleS,20,21). bond("campest-4-en-3-one",single,20,22).
bond("campest-4-en-3-one",single,22,23). bond("campest-4-en-3-one",single,23,24). bond("campest-4-en-3-one",single,24,25).
bond("campest-4-en-3-one",singleR,24,35). bond("campest-4-en-3-one",single,25,26). bond("campest-4-en-3-one",single,25,27).

atom("(5α)-campestan-3-one",1..27,carb).  atom("(5α)-campestan-3-one",30,carb). atom("(5α)-campestan-3-one",31,oxyg).
atom("(5α)-campestan-3-one",35,carb).
bond("(5α)-campestan-3-one",single,1,2). bond("(5α)-campestan-3-one",single,1,10). bond("(5α)-campestan-3-one",single,2,3).
bond("(5α)-campestan-3-one",single,3,4). bond("(5α)-campestan-3-one",double,3,31). bond("(5α)-campestan-3-one",single,4,5).
bond("(5α)-campestan-3-one",single,5,6). bond("(5α)-campestan-3-one",single,5,10). bond("(5α)-campestan-3-one",single,6,7).
bond("(5α)-campestan-3-one",single,7,8). bond("(5α)-campestan-3-one",single,8,9). bond("(5α)-campestan-3-one",single,8,14).
bond("(5α)-campestan-3-one",single,9,10). bond("(5α)-campestan-3-one",single,9,11). bond("(5α)-campestan-3-one",singleR,10,19).
bond("(5α)-campestan-3-one",single,11,12). bond("(5α)-campestan-3-one",single,12,13). bond("(5α)-campestan-3-one",single,13,14).
bond("(5α)-campestan-3-one",single,14,15). bond("(5α)-campestan-3-one",singleS,14,30). bond("(5α)-campestan-3-one",single,15,16).
bond("(5α)-campestan-3-one",single,16,17). bond("(5α)-campestan-3-one",single,13,17). bond("(5α)-campestan-3-one",singleR,13,18).
bond("(5α)-campestan-3-one",singleR,17,20). bond("(5α)-campestan-3-one",singleS,20,21). bond("(5α)-campestan-3-one",single,20,22).
bond("(5α)-campestan-3-one",single,22,23). bond("(5α)-campestan-3-one",single,23,24). bond("(5α)-campestan-3-one",single,24,25).
bond("(5α)-campestan-3-one",singleR,24,35). bond("(5α)-campestan-3-one",single,25,26). bond("(5α)-campestan-3-one",single,25,27).

atom("campestanol",1..27,carb).  atom("campestanol",30,carb). atom("campestanol",31,oxyg).
atom("campestanol",35,carb).
bond("campestanol",single,1,2). bond("campestanol",single,1,10). bond("campestanol",single,2,3).
bond("campestanol",single,3,4). bond("campestanol",singleR,3,31). bond("campestanol",single,4,5).
bond("campestanol",single,5,6). bond("campestanol",single,5,10). bond("campestanol",single,6,7).
bond("campestanol",single,7,8). bond("campestanol",single,8,9). bond("campestanol",single,8,14).
bond("campestanol",single,9,10). bond("campestanol",single,9,11). bond("campestanol",singleR,10,19).
bond("campestanol",single,11,12). bond("campestanol",single,12,13). bond("campestanol",single,13,14).
bond("campestanol",single,14,15). bond("campestanol",singleS,14,30). bond("campestanol",single,15,16).
bond("campestanol",single,16,17). bond("campestanol",single,13,17). bond("campestanol",singleR,13,18).
bond("campestanol",singleR,17,20). bond("campestanol",singleS,20,21). bond("campestanol",single,20,22).
bond("campestanol",single,22,23). bond("campestanol",single,23,24). bond("campestanol",single,24,25).
bond("campestanol",singleR,24,35). bond("campestanol",single,25,26). bond("campestanol",single,25,27).

atom("6-deoxocathasterone",1..27,carb).  atom("6-deoxocathasterone",30,carb). atom("6-deoxocathasterone",31,oxyg).
atom("6-deoxocathasterone",34,oxyg). atom("6-deoxocathasterone",35,carb).
bond("6-deoxocathasterone",single,1,2). bond("6-deoxocathasterone",single,1,10). bond("6-deoxocathasterone",single,2,3).
bond("6-deoxocathasterone",single,3,4). bond("6-deoxocathasterone",singleR,3,31). bond("6-deoxocathasterone",single,4,5).
bond("6-deoxocathasterone",single,5,6). bond("6-deoxocathasterone",single,5,10). bond("6-deoxocathasterone",single,6,7).
bond("6-deoxocathasterone",single,7,8). bond("6-deoxocathasterone",single,8,9). bond("6-deoxocathasterone",single,8,14).
bond("6-deoxocathasterone",single,9,10). bond("6-deoxocathasterone",single,9,11). bond("6-deoxocathasterone",singleR,10,19).
bond("6-deoxocathasterone",single,11,12). bond("6-deoxocathasterone",single,12,13). bond("6-deoxocathasterone",single,13,14).
bond("6-deoxocathasterone",single,14,15). bond("6-deoxocathasterone",singleS,14,30). bond("6-deoxocathasterone",single,15,16).
bond("6-deoxocathasterone",single,16,17). bond("6-deoxocathasterone",single,13,17). bond("6-deoxocathasterone",singleR,13,18).
bond("6-deoxocathasterone",singleR,17,20). bond("6-deoxocathasterone",singleS,20,21). bond("6-deoxocathasterone",single,20,22).
bond("6-deoxocathasterone",single,22,23). bond("6-deoxocathasterone",singleR,22,34). bond("6-deoxocathasterone",single,23,24).
bond("6-deoxocathasterone",single,24,25). bond("6-deoxocathasterone",singleR,24,35). bond("6-deoxocathasterone",single,25,26).
bond("6-deoxocathasterone",single,25,27).

atom("6-deoxoteasterone",1..27,carb).  atom("6-deoxoteasterone",30,carb). atom("6-deoxoteasterone",31,oxyg).
atom("6-deoxoteasterone",32,oxyg). atom("6-deoxoteasterone",34,oxyg). atom("6-deoxoteasterone",35,carb).
bond("6-deoxoteasterone",single,1,2). bond("6-deoxoteasterone",single,1,10). bond("6-deoxoteasterone",single,2,3).
bond("6-deoxoteasterone",single,3,4). bond("6-deoxoteasterone",singleR,3,31). bond("6-deoxoteasterone",single,4,5).
bond("6-deoxoteasterone",single,5,6). bond("6-deoxoteasterone",single,5,10). bond("6-deoxoteasterone",single,6,7).
bond("6-deoxoteasterone",single,7,8). bond("6-deoxoteasterone",single,8,9). bond("6-deoxoteasterone",single,8,14).
bond("6-deoxoteasterone",single,9,10). bond("6-deoxoteasterone",single,9,11). bond("6-deoxoteasterone",singleR,10,19).
bond("6-deoxoteasterone",single,11,12). bond("6-deoxoteasterone",single,12,13). bond("6-deoxoteasterone",single,13,14).
bond("6-deoxoteasterone",single,14,15). bond("6-deoxoteasterone",singleS,14,30). bond("6-deoxoteasterone",single,15,16).
bond("6-deoxoteasterone",single,16,17). bond("6-deoxoteasterone",single,13,17). bond("6-deoxoteasterone",singleR,13,18).
bond("6-deoxoteasterone",singleR,17,20). bond("6-deoxoteasterone",singleS,20,21). bond("6-deoxoteasterone",single,20,22).
bond("6-deoxoteasterone",single,22,23). bond("6-deoxoteasterone",singleR,22,34). bond("6-deoxoteasterone",single,23,24).
bond("6-deoxoteasterone",singleR,23,32). bond("6-deoxoteasterone",single,24,25). bond("6-deoxoteasterone",singleR,24,35).
bond("6-deoxoteasterone",single,25,26). bond("6-deoxoteasterone",single,25,27).

atom("3-dehydro-6-deoxoteasterone",1..27,carb).  atom("3-dehydro-6-deoxoteasterone",30,carb). atom("3-dehydro-6-deoxoteasterone",31,oxyg).
atom("3-dehydro-6-deoxoteasterone",32,oxyg). atom("3-dehydro-6-deoxoteasterone",34,oxyg). atom("3-dehydro-6-deoxoteasterone",35,carb).
bond("3-dehydro-6-deoxoteasterone",single,1,2). bond("3-dehydro-6-deoxoteasterone",single,1,10). bond("3-dehydro-6-deoxoteasterone",single,2,3).
bond("3-dehydro-6-deoxoteasterone",single,3,4). bond("3-dehydro-6-deoxoteasterone",double,3,31). bond("3-dehydro-6-deoxoteasterone",single,4,5).
bond("3-dehydro-6-deoxoteasterone",single,5,6). bond("3-dehydro-6-deoxoteasterone",single,5,10). bond("3-dehydro-6-deoxoteasterone",single,6,7).
bond("3-dehydro-6-deoxoteasterone",single,7,8). bond("3-dehydro-6-deoxoteasterone",single,8,9). bond("3-dehydro-6-deoxoteasterone",single,8,14).
bond("3-dehydro-6-deoxoteasterone",single,9,10). bond("3-dehydro-6-deoxoteasterone",single,9,11). bond("3-dehydro-6-deoxoteasterone",singleR,10,19).
bond("3-dehydro-6-deoxoteasterone",single,11,12). bond("3-dehydro-6-deoxoteasterone",single,12,13). bond("3-dehydro-6-deoxoteasterone",single,13,14).
bond("3-dehydro-6-deoxoteasterone",single,14,15). bond("3-dehydro-6-deoxoteasterone",singleS,14,30). bond("3-dehydro-6-deoxoteasterone",single,15,16).
bond("3-dehydro-6-deoxoteasterone",single,16,17). bond("3-dehydro-6-deoxoteasterone",single,13,17). bond("3-dehydro-6-deoxoteasterone",singleR,13,18).
bond("3-dehydro-6-deoxoteasterone",singleR,17,20). bond("3-dehydro-6-deoxoteasterone",singleS,20,21). bond("3-dehydro-6-deoxoteasterone",single,20,22).
bond("3-dehydro-6-deoxoteasterone",single,22,23). bond("3-dehydro-6-deoxoteasterone",singleR,22,34). bond("3-dehydro-6-deoxoteasterone",single,23,24).
bond("3-dehydro-6-deoxoteasterone",singleR,23,32). bond("3-dehydro-6-deoxoteasterone",single,24,25). bond("3-dehydro-6-deoxoteasterone",singleR,24,35).
bond("3-dehydro-6-deoxoteasterone",single,25,26). bond("3-dehydro-6-deoxoteasterone",single,25,27).

% Information necessary to infer new 23 hydroxylation
atom("(22α)-hydroxy-campest-4-en-3-one",1..27,carb).  atom("(22α)-hydroxy-campest-4-en-3-one",30,carb). atom("(22α)-hydroxy-campest-4-en-3-one",31,oxyg).
atom("(22α)-hydroxy-campest-4-en-3-one",34,oxyg). atom("(22α)-hydroxy-campest-4-en-3-one",35,carb).
bond("(22α)-hydroxy-campest-4-en-3-one",single,1,2). bond("(22α)-hydroxy-campest-4-en-3-one",single,1,10). bond("(22α)-hydroxy-campest-4-en-3-one",single,2,3).
bond("(22α)-hydroxy-campest-4-en-3-one",single,3,4). bond("(22α)-hydroxy-campest-4-en-3-one",double,3,31). bond("(22α)-hydroxy-campest-4-en-3-one",double,4,5).
bond("(22α)-hydroxy-campest-4-en-3-one",single,5,6). bond("(22α)-hydroxy-campest-4-en-3-one",single,5,10). bond("(22α)-hydroxy-campest-4-en-3-one",single,6,7).
bond("(22α)-hydroxy-campest-4-en-3-one",single,7,8). bond("(22α)-hydroxy-campest-4-en-3-one",single,8,9). bond("(22α)-hydroxy-campest-4-en-3-one",single,8,14).
bond("(22α)-hydroxy-campest-4-en-3-one",single,9,10). bond("(22α)-hydroxy-campest-4-en-3-one",single,9,11). bond("(22α)-hydroxy-campest-4-en-3-one",singleR,10,19).
bond("(22α)-hydroxy-campest-4-en-3-one",single,11,12). bond("(22α)-hydroxy-campest-4-en-3-one",single,12,13). bond("(22α)-hydroxy-campest-4-en-3-one",single,13,14).
bond("(22α)-hydroxy-campest-4-en-3-one",single,14,15). bond("(22α)-hydroxy-campest-4-en-3-one",singleS,14,30). bond("(22α)-hydroxy-campest-4-en-3-one",single,15,16).
bond("(22α)-hydroxy-campest-4-en-3-one",single,16,17). bond("(22α)-hydroxy-campest-4-en-3-one",single,13,17). bond("(22α)-hydroxy-campest-4-en-3-one",singleR,13,18).
bond("(22α)-hydroxy-campest-4-en-3-one",singleR,17,20). bond("(22α)-hydroxy-campest-4-en-3-one",singleS,20,21). bond("(22α)-hydroxy-campest-4-en-3-one",single,20,22).
bond("(22α)-hydroxy-campest-4-en-3-one",singleR,22,34). bond("(22α)-hydroxy-campest-4-en-3-one",single,22,23). bond("(22α)-hydroxy-campest-4-en-3-one",single,23,24).
bond("(22α)-hydroxy-campest-4-en-3-one",single,24,25). bond("(22α)-hydroxy-campest-4-en-3-one",singleR,24,35). bond("(22α)-hydroxy-campest-4-en-3-one",single,25,26).
bond("(22α)-hydroxy-campest-4-en-3-one",single,25,27).

atom("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",1..27,carb).  atom("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",30,carb). atom("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",31,oxyg).
atom("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",32,oxyg). atom("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",34,oxyg). atom("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",35,carb).
bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",single,1,2). bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",single,1,10). bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",single,2,3).
bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",single,3,4). bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",double,3,31). bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",double,4,5).
bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",single,5,6). bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",single,5,10). bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",single,6,7).
bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",single,7,8). bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",single,8,9). bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",single,8,14).
bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",single,9,10). bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",single,9,11). bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",singleR,10,19).
bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",single,11,12). bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",single,12,13). bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",single,13,14).
bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",single,14,15). bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",singleS,14,30). bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",single,15,16).
bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",single,16,17). bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",single,13,17). bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",singleR,13,18).
bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",singleR,17,20). bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",singleS,20,21). bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",single,20,22).
bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",singleR,22,34). bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",single,22,23). bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",single,23,24).
bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",singleR,23,32). bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",single,24,25). bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",singleR,24,35). 
bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",single,25,26). bond("(22R,23R)-22,23-dihydroxy-campest-4-en-3-one",single,25,27).

atom("(22S,24R)-22-hydroxy-5α-ergostan-3-one",1..27,carb).  atom("(22S,24R)-22-hydroxy-5α-ergostan-3-one",30,carb). atom("(22S,24R)-22-hydroxy-5α-ergostan-3-one",31,oxyg).
atom("(22S,24R)-22-hydroxy-5α-ergostan-3-one",34,oxyg). atom("(22S,24R)-22-hydroxy-5α-ergostan-3-one",35,carb).
bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,1,2). bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,1,10). bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,2,3).
bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,3,4). bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",double,3,31). bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,4,5).
bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,5,6). bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,5,10). bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,6,7).
bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,7,8). bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,8,9). bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,8,14).
bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,9,10). bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,9,11). bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",singleR,10,19).
bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,11,12). bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,12,13). bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,13,14).
bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,14,15). bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",singleS,14,30). bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,15,16).
bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,16,17). bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,13,17). bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",singleR,13,18).
bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",singleR,17,20). bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",singleS,20,21). bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,20,22).
bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",singleR,22,34). bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,22,23). bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,23,24).
bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,24,25). bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",singleR,24,35). bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,25,26).
bond("(22S,24R)-22-hydroxy-5α-ergostan-3-one",single,25,27).

atom("3-epi-6-deoxocathasterone",1..27,carb).  atom("3-epi-6-deoxocathasterone",30,carb). atom("3-epi-6-deoxocathasterone",31,oxyg).
atom("3-epi-6-deoxocathasterone",34,oxyg). atom("3-epi-6-deoxocathasterone",35,carb).
bond("3-epi-6-deoxocathasterone",single,1,2). bond("3-epi-6-deoxocathasterone",single,1,10). bond("3-epi-6-deoxocathasterone",single,2,3).
bond("3-epi-6-deoxocathasterone",single,3,4). bond("3-epi-6-deoxocathasterone",singleS,3,31). bond("3-epi-6-deoxocathasterone",single,4,5).
bond("3-epi-6-deoxocathasterone",single,5,6). bond("3-epi-6-deoxocathasterone",single,5,10). bond("3-epi-6-deoxocathasterone",single,6,7).
bond("3-epi-6-deoxocathasterone",single,7,8). bond("3-epi-6-deoxocathasterone",single,8,9). bond("3-epi-6-deoxocathasterone",single,8,14).
bond("3-epi-6-deoxocathasterone",single,9,10). bond("3-epi-6-deoxocathasterone",single,9,11). bond("3-epi-6-deoxocathasterone",singleR,10,19).
bond("3-epi-6-deoxocathasterone",single,11,12). bond("3-epi-6-deoxocathasterone",single,12,13). bond("3-epi-6-deoxocathasterone",single,13,14).
bond("3-epi-6-deoxocathasterone",single,14,15). bond("3-epi-6-deoxocathasterone",singleS,14,30). bond("3-epi-6-deoxocathasterone",single,15,16).
bond("3-epi-6-deoxocathasterone",single,16,17). bond("3-epi-6-deoxocathasterone",single,13,17). bond("3-epi-6-deoxocathasterone",singleR,13,18).
bond("3-epi-6-deoxocathasterone",singleR,17,20). bond("3-epi-6-deoxocathasterone",singleS,20,21). bond("3-epi-6-deoxocathasterone",single,20,22).
bond("3-epi-6-deoxocathasterone",singleR,22,34). bond("3-epi-6-deoxocathasterone",single,22,23). bond("3-epi-6-deoxocathasterone",single,23,24).
bond("3-epi-6-deoxocathasterone",single,24,25). bond("3-epi-6-deoxocathasterone",singleR,24,35). bond("3-epi-6-deoxocathasterone",single,25,26).
bond("3-epi-6-deoxocathasterone",single,25,27).

atom("6-deoxotyphasterol",1..27,carb).  atom("6-deoxotyphasterol",30,carb). atom("6-deoxotyphasterol",31,oxyg).
atom("6-deoxotyphasterol",32,oxyg). atom("6-deoxotyphasterol",34,oxyg). atom("6-deoxotyphasterol",35,carb).
bond("6-deoxotyphasterol",single,1,2). bond("6-deoxotyphasterol",single,1,10). bond("6-deoxotyphasterol",single,2,3).
bond("6-deoxotyphasterol",single,3,4). bond("6-deoxotyphasterol",singleS,3,31). bond("6-deoxotyphasterol",single,4,5).
bond("6-deoxotyphasterol",single,5,6). bond("6-deoxotyphasterol",single,5,10). bond("6-deoxotyphasterol",single,6,7).
bond("6-deoxotyphasterol",single,7,8). bond("6-deoxotyphasterol",single,8,9). bond("6-deoxotyphasterol",single,8,14).
bond("6-deoxotyphasterol",single,9,10). bond("6-deoxotyphasterol",single,9,11). bond("6-deoxotyphasterol",singleR,10,19).
bond("6-deoxotyphasterol",single,11,12). bond("6-deoxotyphasterol",single,12,13). bond("6-deoxotyphasterol",single,13,14).
bond("6-deoxotyphasterol",single,14,15). bond("6-deoxotyphasterol",singleS,14,30). bond("6-deoxotyphasterol",single,15,16).
bond("6-deoxotyphasterol",single,16,17). bond("6-deoxotyphasterol",single,13,17). bond("6-deoxotyphasterol",singleR,13,18).
bond("6-deoxotyphasterol",singleR,17,20). bond("6-deoxotyphasterol",singleS,20,21). bond("6-deoxotyphasterol",single,20,22).
bond("6-deoxotyphasterol",single,22,23). bond("6-deoxotyphasterol",singleR,22,34). bond("6-deoxotyphasterol",single,23,24).
bond("6-deoxotyphasterol",singleR,23,32). bond("6-deoxotyphasterol",single,24,25). bond("6-deoxotyphasterol",singleR,24,35).
bond("6-deoxotyphasterol",single,25,26). bond("6-deoxotyphasterol",single,25,27).

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
bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,22,23). bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,23,24). bond("23-hydroxy-Δ1-2-31-norcycloartenone",singleR,23,32).
bond("23-hydroxy-Δ1-2-31-norcycloartenone",double,24,25). bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,25,26). bond("23-hydroxy-Δ1-2-31-norcycloartenone",single,25,27).

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

reaction(rxn_21829, "cycloartenol", "(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol").
reaction(rxn_21830, "(3β,9β)-4α-demethyl-4α-carboxy-9,19-cyclolanost-24-en-3-ol", "31-norcycloartenone").

reaction(rxn_21831, "31-norcycloartenone", "31-norcycloartenol").
reaction(rxn_11876, "31-norcycloartenol", "4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol").
reaction(rxn_21165, "4α,14α-dimethyl-5α-cholesta-8,24-dien-3β-ol", "4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol").
reaction(rxn_21166, "4α-hydroxymethyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol", "4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol").
reaction(rxn_21167, "4α-formyl-14α-methyl-5α-cholesta-8,24-dien-3β-ol", "4α-methyl-5α-cholesta-8,14,24-trien-3β-ol").
reaction(rxn_11878, "4α-methyl-5α-cholesta-8,14,24-trien-3β-ol", "4α-methyl-5α-cholesta-8,24-dien-3β-ol").
reaction(rxn_11884, "4α-methyl-5α-cholesta-8,24-dien-3β-ol", "4α-methyl-5α-cholesta-7,24-dien-3β-ol").
reaction(rxn_21833, "4α-methyl-5α-cholesta-7,24-dien-3β-ol", "4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol").
reaction(rxn_21834, "4α-methylhydroxy-5α-cholest-7,24-dien-3β-ol", "4α-formyl-5α-cholest-7,24-dien-3β-ol").
reaction(rxn_21835, "4α-formyl-5α-cholest-7,24-dien-3β-ol", "4α-carboxy-5α-cholesta-7,24-dien-3β-ol").
reaction(rxn_11959, "4α-carboxy-5α-cholesta-7,24-dien-3β-ol", "5α-cholesta-7,24-dien-3-one").

reaction(rxn_21837, "5α-cholesta-7,24-dien-3-one", "5α-cholesta-7,24-dienol").
reaction(rxn_11887, "5α-cholesta-7,24-dienol", "7-dehydrodesmosterol").
reaction(rxn66_27, "7-dehydrodesmosterol", "desmosterol").
% PWY66-4 and PWY-8191
reaction(rxn66_28, "desmosterol", "cholesterol").

% Information necessary to infer new Δ1-2 reduction
% PWY-6944: androstenedione degradation I (aerobic)
reaction(rxn_12714, "androst-4-ene-3,17-dione", "androsta-1,4-diene-3,17-dione").
% corresponding metacyc general reactions (EC 1.3.99.4)
reaction(rxn_3_OXOSTEROID_1_DEHYDROGENASE_RXN, "a 3-oxosteroid", "a 3-oxo-Δ1-steroid").

% PWY-2582: brassinosteroid biosynthesis II
reaction(rxn_4225,"campesterol","(22α)-hydroxy-campesterol").
reaction(rxn_4226,"(22α)-hydroxy-campesterol","(22α)-hydroxy-campest-4-en-3-one").
reaction(rxn_11529,"(22α)-hydroxy-campest-4-en-3-one","(22R,23R)-22,23-dihydroxycampesterol").
reaction(rxn_11533,"(22R,23R)-22,23-dihydroxycampesterol","(22R,23R)-22,23-dihydroxy-campest-4-en-3-one").

reaction(rxn_709,"campesterol","campest-4-en-3β-ol").
reaction(rxn_710,"campest-4-en-3β-ol","campest-4-en-3-one").
reaction(rxn_4231,"campest-4-en-3-one","(22α)-hydroxy-campest-4-en-3-one").
reaction(rxn_711,"campest-4-en-3-one","(5α)-campestan-3-one").
reaction(rxn_712,"(5α)-campestan-3-one","campestanol").
reaction(rxn_773,"campestanol","6-deoxocathasterone").
reaction(rxn_4228,"(22S,24R)-22-hydroxy-5α-ergostan-3-one","6-deoxocathasterone").
reaction(rxn_774,"6-deoxocathasterone","6-deoxoteasterone").
reaction(rxn_775,"6-deoxoteasterone","3-dehydro-6-deoxoteasterone").
reaction(rxn_11101,"(22S,24R)-22-hydroxy-5α-ergostan-3-one","3-dehydro-6-deoxoteasterone").

% Information necessary to infer new 23 hydroxylation
reaction(rxn_11530, "(22α)-hydroxy-campest-4-en-3-one", "(22R,23R)-22,23-dihydroxy-campest-4-en-3-one").

reaction(rxn_11534,"(22R,23R)-22,23-dihydroxy-campest-4-en-3-one","3-dehydro-6-deoxoteasterone").

reaction(rxn_4230,"(5α)-campestan-3-one","(22S,24R)-22-hydroxy-5α-ergostan-3-one").
reaction(rxn_4229,"(22α)-hydroxy-campest-4-en-3-one","(22S,24R)-22-hydroxy-5α-ergostan-3-one").

reaction(rxn_11532,"(22S,24R)-22-hydroxy-5α-ergostan-3-one","3-epi-6-deoxocathasterone").

reaction(rxn_776,"3-dehydro-6-deoxoteasterone","6-deoxotyphasterol").
reaction(rxn_11531,"3-epi-6-deoxocathasterone","6-deoxotyphasterol").

%*
Information necessary to infer new 23 dehydrogenation
Here we have to define the general concept of steroid dehydrogenation based on the numerous occurrences on various positions: 3, 7, 11, 12, 17, 20 
https://metacyc.org/META/substring-search?type=NIL&object=hydroxysteroid+dehydrogenase&quickSearch=Quick+Search#ENZYME
The candidate enzyme could belong either to the short-chain dehydrogenase family (SDR) or to the aldo-ketoreductases. 
Alternatively, the reaction could also be performed by a CYP enzyme in a CYP85 or CYP90A-like manner.
*%
reaction(new_23_dehydrogenation, "23-hydroxy-Δ1-2-31-norcycloartenone", "mozukulin A").

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
