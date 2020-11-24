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
bond("cycloartenol",single,9,11). bond("cycloartenol",singleR,9,19). bond("cycloartenol",singleR,10,19).
bond("cycloartenol",single,11,12). bond("cycloartenol",single,12,13). bond("cycloartenol",single,13,14).
bond("cycloartenol",single,14,15). bond("cycloartenol",singleS,14,30). bond("cycloartenol",single,15,16).
bond("cycloartenol",single,16,17). bond("cycloartenol",single,13,17). bond("cycloartenol",singleR,13,18).
bond("cycloartenol",singleR,17,20). bond("cycloartenol",singleS,20,21). bond("cycloartenol",single,20,22).
bond("cycloartenol",single,22,23). bond("cycloartenol",single,23,24). bond("cycloartenol",double,24,25).
bond("cycloartenol",single,25,26). bond("cycloartenol",single,25,27).

atom("stigmasterol",1..24,carb). atom("stigmasterol",241,carb). atom("stigmasterol",242,carb).
atom("stigmasterol",25..27,carb). atom("stigmasterol",31,oxyg).
bond("stigmasterol",single,1,2). bond("stigmasterol",single,1,10). bond("stigmasterol",single,2,3).
bond("stigmasterol",single,3,4). bond("stigmasterol",singleR,3,31). bond("stigmasterol",single,4,5).
bond("stigmasterol",double,5,6). bond("stigmasterol",single,5,10). bond("stigmasterol",single,6,7).
bond("stigmasterol",single,7,8). bond("stigmasterol",single,8,9). bond("stigmasterol",single,8,14).
bond("stigmasterol",single,9,10). bond("stigmasterol",single,9,11). bond("stigmasterol",singleR,10,19).
bond("stigmasterol",single,11,12). bond("stigmasterol",single,12,13). bond("stigmasterol",single,13,14).
bond("stigmasterol",single,14,15). bond("stigmasterol",single,15,16). bond("stigmasterol",single,16,17).
bond("stigmasterol",single,13,17). bond("stigmasterol",singleR,13,18). bond("stigmasterol",singleR,17,20).
bond("stigmasterol",singleS,20,21). bond("stigmasterol",single,20,22). bond("stigmasterol",double,22,23).
bond("stigmasterol",single,23,24). bond("stigmasterol",singleR,24,241). bond("stigmasterol",single,241,242).
bond("stigmasterol",single,24,25). bond("stigmasterol",single,25,26). bond("stigmasterol",single,25,27).


atom("24-methylenecholesterol",1..24,carb). atom("24-methylenecholesterol",241,carb). atom("24-methylenecholesterol",25..27,carb).
atom("24-methylenecholesterol",31,oxyg).
bond("24-methylenecholesterol",single,1,2). bond("24-methylenecholesterol",single,1,10). bond("24-methylenecholesterol",single,2,3).
bond("24-methylenecholesterol",single,3,4). bond("24-methylenecholesterol",singleR,3,31). bond("24-methylenecholesterol",single,4,5).
bond("24-methylenecholesterol",double,5,6). bond("24-methylenecholesterol",single,5,10). bond("24-methylenecholesterol",single,6,7).
bond("24-methylenecholesterol",single,7,8). bond("24-methylenecholesterol",single,8,9). bond("24-methylenecholesterol",single,8,14).
bond("24-methylenecholesterol",single,9,10). bond("24-methylenecholesterol",single,9,11). bond("24-methylenecholesterol",singleR,10,19).
bond("24-methylenecholesterol",single,11,12). bond("24-methylenecholesterol",single,12,13). bond("24-methylenecholesterol",single,13,14).
bond("24-methylenecholesterol",single,14,15). bond("24-methylenecholesterol",single,15,16). bond("24-methylenecholesterol",single,16,17).
bond("24-methylenecholesterol",single,13,17). bond("24-methylenecholesterol",singleR,13,18). bond("24-methylenecholesterol",singleR,17,20).
bond("24-methylenecholesterol",singleS,20,21). bond("24-methylenecholesterol",single,20,22). bond("24-methylenecholesterol",single,22,23).
bond("24-methylenecholesterol",single,23,24). bond("24-methylenecholesterol",double,24,241). bond("24-methylenecholesterol",single,24,25).
bond("24-methylenecholesterol",single,25,26). bond("24-methylenecholesterol",single,25,27).


atom("campesterol",1..24,carb). atom("campesterol",241,carb). atom("campesterol",25..27,carb).
atom("campesterol",31,oxyg).
bond("campesterol",single,1,2). bond("campesterol",single,1,10). bond("campesterol",single,2,3).
bond("campesterol",single,3,4). bond("campesterol",singleR,3,31). bond("campesterol",single,4,5).
bond("campesterol",double,5,6). bond("campesterol",single,5,10). bond("campesterol",single,6,7).
bond("campesterol",single,7,8). bond("campesterol",single,8,9). bond("campesterol",single,8,14).
bond("campesterol",single,9,10). bond("campesterol",single,9,11). bond("campesterol",singleR,10,19).
bond("campesterol",single,11,12). bond("campesterol",single,12,13). bond("campesterol",single,13,14).
bond("campesterol",single,14,15). bond("campesterol",single,15,16). bond("campesterol",single,16,17).
bond("campesterol",single,13,17). bond("campesterol",singleR,13,18). bond("campesterol",singleR,17,20).
bond("campesterol",singleS,20,21). bond("campesterol",single,20,22). bond("campesterol",single,22,23).
bond("campesterol",single,23,24). bond("campesterol",singleR,24,241). bond("campesterol",single,24,25).
bond("campesterol",single,25,26). bond("campesterol",single,25,27).


atom("brassicasterol",1..24,carb). atom("brassicasterol",241,carb). atom("brassicasterol",25..27,carb).
atom("brassicasterol",31,oxyg).
bond("brassicasterol",single,1,2). bond("brassicasterol",single,1,10). bond("brassicasterol",single,2,3).
bond("brassicasterol",single,3,4). bond("brassicasterol",singleR,3,31). bond("brassicasterol",single,4,5).
bond("brassicasterol",double,5,6). bond("brassicasterol",single,5,10). bond("brassicasterol",single,6,7).
bond("brassicasterol",single,7,8). bond("brassicasterol",single,8,9). bond("brassicasterol",single,8,14).
bond("brassicasterol",single,9,10). bond("brassicasterol",single,9,11). bond("brassicasterol",singleR,10,19).
bond("brassicasterol",single,11,12). bond("brassicasterol",single,12,13). bond("brassicasterol",single,13,14).
bond("brassicasterol",single,14,15). bond("brassicasterol",single,15,16). bond("brassicasterol",single,16,17).
bond("brassicasterol",single,13,17). bond("brassicasterol",singleR,13,18). bond("brassicasterol",singleR,17,20).
bond("brassicasterol",singleS,20,21). bond("brassicasterol",single,20,22). bond("brassicasterol",double,22,23).
bond("brassicasterol",single,23,24). bond("brassicasterol",singleR,24,241). bond("brassicasterol",single,24,25).
bond("brassicasterol",single,25,26). bond("brassicasterol",single,25,27).


atom("24-methylenecycloartanol",1..24,carb). atom("24-methylenecycloartanol",241,carb). atom("24-methylenecycloartanol",25..30,carb).
atom("24-methylenecycloartanol",31,oxyg).
bond("24-methylenecycloartanol",single,1,2). bond("24-methylenecycloartanol",single,1,10). bond("24-methylenecycloartanol",single,2,3).
bond("24-methylenecycloartanol",single,3,4). bond("24-methylenecycloartanol",singleR,3,31). bond("24-methylenecycloartanol",single,4,5).
bond("24-methylenecycloartanol",singleR,4,29). bond("24-methylenecycloartanol",singleS,4,28). bond("24-methylenecycloartanol",single,5,6).
bond("24-methylenecycloartanol",single,5,10). bond("24-methylenecycloartanol",single,6,7). bond("24-methylenecycloartanol",single,7,8).
bond("24-methylenecycloartanol",single,8,9). bond("24-methylenecycloartanol",single,8,14). bond("24-methylenecycloartanol",single,9,10).
bond("24-methylenecycloartanol",single,9,11).bond("24-methylenecycloartanol",singleR,9,19). bond("24-methylenecycloartanol",singleR,10,19).
bond("24-methylenecycloartanol",single,11,12). bond("24-methylenecycloartanol",single,12,13). bond("24-methylenecycloartanol",single,13,14).
bond("24-methylenecycloartanol",single,14,15). bond("24-methylenecycloartanol",singleS,14,30). bond("24-methylenecycloartanol",single,15,16).
bond("24-methylenecycloartanol",single,16,17). bond("24-methylenecycloartanol",single,13,17). bond("24-methylenecycloartanol",singleR,13,18).
bond("24-methylenecycloartanol",singleR,17,20). bond("24-methylenecycloartanol",singleS,20,21). bond("24-methylenecycloartanol",single,20,22).
bond("24-methylenecycloartanol",single,22,23). bond("24-methylenecycloartanol",single,23,24). bond("24-methylenecycloartanol",double,24,241).
bond("24-methylenecycloartanol",single,24,25). bond("24-methylenecycloartanol",single,25,26). bond("24-methylenecycloartanol",single,25,27).

atom("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",1..24,carb). atom("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",241,carb). atom("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",25..30,carb).
atom("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",31,oxyg). atom("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",32,oxyg).
bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,1,2). bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,1,10). bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,2,3).
bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,3,4). bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleR,3,31). bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,4,5).
bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleR,4,29). bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleS,4,28). bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,5,6).
bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,5,10). bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,6,7). bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,7,8).
bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,8,9). bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,8,14). bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,9,10).
bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,9,11).bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleR,9,19). bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleR,10,19).
bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,11,12). bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,12,13). bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,13,14).
bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,14,15). bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleS,14,30). bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,15,16).
bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,16,17). bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,13,17). bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleR,13,18).
bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleR,17,20). bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleS,20,21). bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,20,22).
bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,22,23). bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,23,24). bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",double,24,241).
bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,24,25). bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,25,26). bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,25,27).
bond("4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,28,32).

atom("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",1..24,carb). atom("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",241,carb). atom("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",25..30,carb).
atom("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",31,oxyg). atom("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",32,oxyg).
bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,1,2). bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,1,10). bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,2,3).
bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,3,4). bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleR,3,31). bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,4,5).
bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleR,4,29). bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleS,4,28). bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,5,6).
bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,5,10). bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,6,7). bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,7,8).
bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,8,9). bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,8,14). bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,9,10).
bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,9,11).bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleR,9,19). bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleR,10,19).
bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,11,12). bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,12,13). bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,13,14).
bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,14,15). bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleS,14,30). bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,15,16).
bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,16,17). bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,13,17). bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleR,13,18).
bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleR,17,20). bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleS,20,21). bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,20,22).
bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,22,23). bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,23,24). bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",double,24,241).
bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,24,25). bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,25,26). bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,25,27).
bond("4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",double,28,32).

atom("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",1..24,carb). atom("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",241,carb). atom("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",25..30,carb).
atom("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",31,oxyg). atom("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",32..33,oxyg).
bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,1,2). bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,1,10). bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,2,3).
bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,3,4). bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleR,3,31). bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,4,5).
bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleR,4,29). bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleS,4,28). bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,5,6).
bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,5,10). bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,6,7). bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,7,8).
bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,8,9). bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,8,14). bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,9,10).
bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,9,11).bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleR,9,19). bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleR,10,19).
bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,11,12). bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,12,13). bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,13,14).
bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,14,15). bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleS,14,30). bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,15,16).
bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,16,17). bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,13,17). bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleR,13,18).
bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleR,17,20). bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",singleS,20,21). bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,20,22).
bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,22,23). bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,23,24). bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",double,24,241).
bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,24,25). bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,25,26). bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,25,27).
bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",double,28,32). bond("4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol",single,28,33).

atom("cycloeucalenone",1..24,carb). atom("cycloeucalenone",241,carb). atom("cycloeucalenone",25..28,carb).
atom("cycloeucalenone",30,carb). atom("cycloeucalenone",31,oxyg).
bond("cycloeucalenone",single,1,2). bond("cycloeucalenone",single,1,10). bond("cycloeucalenone",single,2,3).
bond("cycloeucalenone",single,3,4). bond("cycloeucalenone",double,3,31). bond("cycloeucalenone",single,4,5).
bond("cycloeucalenone",singleS,4,28). bond("cycloeucalenone",single,5,6). bond("cycloeucalenone",single,5,10).
bond("cycloeucalenone",single,6,7). bond("cycloeucalenone",single,7,8). bond("cycloeucalenone",single,8,9).
bond("cycloeucalenone",single,8,14). bond("cycloeucalenone",single,9,10). bond("cycloeucalenone",single,9,11).
bond("cycloeucalenone",singleR,9,19). bond("cycloeucalenone",singleR,10,19). bond("cycloeucalenone",single,11,12).
bond("cycloeucalenone",single,12,13). bond("cycloeucalenone",single,13,14). bond("cycloeucalenone",single,14,15).
bond("cycloeucalenone",singleS,14,30). bond("cycloeucalenone",single,15,16). bond("cycloeucalenone",single,16,17).
bond("cycloeucalenone",single,13,17). bond("cycloeucalenone",singleR,13,18). bond("cycloeucalenone",singleR,17,20).
bond("cycloeucalenone",singleS,20,21). bond("cycloeucalenone",single,20,22). bond("cycloeucalenone",single,22,23).
bond("cycloeucalenone",single,23,24). bond("cycloeucalenone",double,24,241). bond("cycloeucalenone",single,24,25).
bond("cycloeucalenone",single,25,26). bond("cycloeucalenone",single,25,27).

atom("cycloeucalenol",1..24,carb). atom("cycloeucalenol",241,carb). atom("cycloeucalenol",25..28,carb).
atom("cycloeucalenol",30,carb). atom("cycloeucalenol",31,oxyg).
bond("cycloeucalenol",single,1,2). bond("cycloeucalenol",single,1,10). bond("cycloeucalenol",single,2,3).
bond("cycloeucalenol",single,3,4). bond("cycloeucalenol",singleR,3,31). bond("cycloeucalenol",single,4,5).
bond("cycloeucalenol",singleS,4,28). bond("cycloeucalenol",single,5,6). bond("cycloeucalenol",single,5,10).
bond("cycloeucalenol",single,6,7). bond("cycloeucalenol",single,7,8). bond("cycloeucalenol",single,8,9).
bond("cycloeucalenol",single,8,14). bond("cycloeucalenol",single,9,10). bond("cycloeucalenol",single,9,11).
bond("cycloeucalenol",singleR,9,19). bond("cycloeucalenol",singleR,10,19). bond("cycloeucalenol",single,11,12).
bond("cycloeucalenol",single,12,13). bond("cycloeucalenol",single,13,14). bond("cycloeucalenol",single,14,15).
bond("cycloeucalenol",singleS,14,30). bond("cycloeucalenol",single,15,16). bond("cycloeucalenol",single,16,17).
bond("cycloeucalenol",single,13,17). bond("cycloeucalenol",singleR,13,18). bond("cycloeucalenol",singleR,17,20).
bond("cycloeucalenol",singleS,20,21). bond("cycloeucalenol",single,20,22). bond("cycloeucalenol",single,22,23).
bond("cycloeucalenol",single,23,24). bond("cycloeucalenol",double,24,241). bond("cycloeucalenol",single,24,25).
bond("cycloeucalenol",single,25,26). bond("cycloeucalenol",single,25,27).

atom("obtusifoliol",1..24,carb). atom("obtusifoliol",241,carb). atom("obtusifoliol",25..28,carb).
atom("obtusifoliol",30,carb). atom("obtusifoliol",31,oxyg).
bond("obtusifoliol",single,1,2). bond("obtusifoliol",single,1,10). bond("obtusifoliol",single,2,3).
bond("obtusifoliol",single,3,4). bond("obtusifoliol",singleR,3,31). bond("obtusifoliol",single,4,5).
bond("obtusifoliol",singleS,4,28). bond("obtusifoliol",single,5,6). bond("obtusifoliol",single,5,10).
bond("obtusifoliol",single,6,7). bond("obtusifoliol",single,7,8). bond("obtusifoliol",double,8,9).
bond("obtusifoliol",single,8,14). bond("obtusifoliol",single,9,10). bond("obtusifoliol",single,9,11).
bond("obtusifoliol",singleR,10,19). bond("obtusifoliol",single,11,12). bond("obtusifoliol",single,12,13).
bond("obtusifoliol",single,13,14). bond("obtusifoliol",single,14,15). bond("obtusifoliol",singleS,14,30).
bond("obtusifoliol",single,15,16). bond("obtusifoliol",single,16,17). bond("obtusifoliol",single,13,17).
bond("obtusifoliol",singleR,13,18). bond("obtusifoliol",singleR,17,20). bond("obtusifoliol",singleS,20,21).
bond("obtusifoliol",single,20,22). bond("obtusifoliol",single,22,23). bond("obtusifoliol",single,23,24).
bond("obtusifoliol",double,24,241). bond("obtusifoliol",single,24,25). bond("obtusifoliol",single,25,26).
bond("obtusifoliol",single,25,27).

atom("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",1..24,carb). atom("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",241,carb). atom("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",25..28,carb).
atom("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",31,oxyg).
bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",single,1,2). bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",single,1,10). bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",single,2,3).
bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",single,3,4). bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",singleR,3,31). bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",single,4,5).
bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",singleS,4,28). bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",single,5,6). bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",single,5,10).
bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",single,6,7). bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",single,7,8). bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",double,8,9).
bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",single,8,14). bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",single,9,10). bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",single,9,11).
bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",singleR,10,19). bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",single,11,12). bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",single,12,13).
bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",single,13,14). bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",double,14,15). bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",single,15,16).
bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",single,16,17). bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",single,13,17). bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",singleR,13,18).
bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",singleR,17,20). bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",singleS,20,21). bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",single,20,22).
bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",single,22,23). bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",single,23,24). bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",double,24,241).
bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",single,24,25). bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",single,25,26). bond("4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol",single,25,27).

atom("4α-methyl-5α-ergosta-8,24-dien-3β-ol",1..24,carb). atom("4α-methyl-5α-ergosta-8,24-dien-3β-ol",241,carb). atom("4α-methyl-5α-ergosta-8,24-dien-3β-ol",25..28,carb).
atom("4α-methyl-5α-ergosta-8,24-dien-3β-ol",31,oxyg).
bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",single,1,2). bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",single,1,10). bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",single,2,3).
bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",single,3,4). bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",singleR,3,31). bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",single,4,5).
bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",singleS,4,28). bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",single,5,6). bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",single,5,10).
bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",single,6,7). bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",single,7,8). bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",double,8,9).
bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",single,8,14). bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",single,9,10). bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",single,9,11).
bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",singleR,10,19). bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",single,11,12). bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",single,12,13).
bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",single,13,14). bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",single,14,15). bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",single,15,16).
bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",single,16,17). bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",single,13,17). bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",singleR,13,18).
bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",singleR,17,20). bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",singleS,20,21). bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",single,20,22).
bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",single,22,23). bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",single,23,24). bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",double,24,241).
bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",single,24,25). bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",single,25,26). bond("4α-methyl-5α-ergosta-8,24-dien-3β-ol",single,25,27).

atom("24-methylenelophenol",1..24,carb). atom("24-methylenelophenol",241,carb). atom("24-methylenelophenol",25..28,carb).
atom("24-methylenelophenol",31,oxyg).
bond("24-methylenelophenol",single,1,2). bond("24-methylenelophenol",single,1,10). bond("24-methylenelophenol",single,2,3).
bond("24-methylenelophenol",single,3,4). bond("24-methylenelophenol",singleR,3,31). bond("24-methylenelophenol",single,4,5).
bond("24-methylenelophenol",singleS,4,28). bond("24-methylenelophenol",single,5,6). bond("24-methylenelophenol",single,5,10).
bond("24-methylenelophenol",single,6,7). bond("24-methylenelophenol",double,7,8). bond("24-methylenelophenol",single,8,9).
bond("24-methylenelophenol",single,8,14). bond("24-methylenelophenol",single,9,10). bond("24-methylenelophenol",single,9,11).
bond("24-methylenelophenol",singleR,10,19). bond("24-methylenelophenol",single,11,12). bond("24-methylenelophenol",single,12,13).
bond("24-methylenelophenol",single,13,14). bond("24-methylenelophenol",single,14,15). bond("24-methylenelophenol",single,15,16).
bond("24-methylenelophenol",single,16,17). bond("24-methylenelophenol",single,13,17). bond("24-methylenelophenol",singleR,13,18).
bond("24-methylenelophenol",singleR,17,20). bond("24-methylenelophenol",singleS,20,21). bond("24-methylenelophenol",single,20,22).
bond("24-methylenelophenol",single,22,23). bond("24-methylenelophenol",single,23,24). bond("24-methylenelophenol",double,24,241).
bond("24-methylenelophenol",single,24,25). bond("24-methylenelophenol",single,25,26). bond("24-methylenelophenol",single,25,27).

% 24-ethylidenelophenol branch

atom("24-ethylidenelophenol",1..24,carb). atom("24-ethylidenelophenol",241,carb). atom("24-ethylidenelophenol",242,carb).
atom("24-ethylidenelophenol",25..28,carb). atom("24-ethylidenelophenol",31,oxyg).
bond("24-ethylidenelophenol",single,1,2). bond("24-ethylidenelophenol",single,1,10). bond("24-ethylidenelophenol",single,2,3).
bond("24-ethylidenelophenol",single,3,4). bond("24-ethylidenelophenol",singleR,3,31). bond("24-ethylidenelophenol",single,4,5).
bond("24-ethylidenelophenol",singleS,4,28). bond("24-ethylidenelophenol",single,5,6). bond("24-ethylidenelophenol",single,5,10).
bond("24-ethylidenelophenol",single,6,7). bond("24-ethylidenelophenol",double,7,8). bond("24-ethylidenelophenol",single,8,9).
bond("24-ethylidenelophenol",single,8,14). bond("24-ethylidenelophenol",single,9,10). bond("24-ethylidenelophenol",single,9,11).
bond("24-ethylidenelophenol",singleR,10,19). bond("24-ethylidenelophenol",single,11,12). bond("24-ethylidenelophenol",single,12,13).
bond("24-ethylidenelophenol",single,13,14). bond("24-ethylidenelophenol",single,14,15). bond("24-ethylidenelophenol",single,15,16).
bond("24-ethylidenelophenol",single,16,17). bond("24-ethylidenelophenol",single,13,17). bond("24-ethylidenelophenol",singleR,13,18).
bond("24-ethylidenelophenol",singleR,17,20). bond("24-ethylidenelophenol",singleS,20,21). bond("24-ethylidenelophenol",single,20,22).
bond("24-ethylidenelophenol",single,22,23). bond("24-ethylidenelophenol",single,23,24). bond("24-ethylidenelophenol",double,24,241).
bond("24-ethylidenelophenol",single,241,242). bond("24-ethylidenelophenol",single,24,25). bond("24-ethylidenelophenol",single,25,26).
bond("24-ethylidenelophenol",single,25,27).

atom("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",1..24,carb). atom("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",241,carb). atom("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",242,carb).
atom("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",25..28,carb). atom("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",31..32,oxyg).
bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,1,2). bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,1,10). bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,2,3).
bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,3,4). bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",singleR,3,31). bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,4,5).
bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",singleS,4,28). bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,5,6). bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,5,10).
bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,6,7). bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",double,7,8). bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,8,9).
bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,8,14). bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,9,10). bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,9,11).
bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",singleR,10,19). bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,11,12). bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,12,13).
bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,13,14). bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,14,15). bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,15,16).
bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,16,17). bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,13,17). bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",singleR,13,18).
bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",singleR,17,20). bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",singleS,20,21). bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,20,22).
bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,22,23). bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,23,24). bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",double,24,241).
bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,241,242). bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,24,25). bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,25,26).
bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,25,27). bond("4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol",single,28,32).

atom("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",1..24,carb). atom("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",241,carb). atom("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",242,carb).
atom("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",25..28,carb). atom("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",31..32,oxyg).
bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,1,2). bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,1,10). bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,2,3).
bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,3,4). bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",singleR,3,31). bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,4,5).
bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",singleS,4,28). bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,5,6). bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,5,10).
bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,6,7). bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",double,7,8). bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,8,9).
bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,8,14). bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,9,10). bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,9,11).
bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",singleR,10,19). bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,11,12). bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,12,13).
bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,13,14). bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,14,15). bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,15,16).
bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,16,17). bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,13,17). bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",singleR,13,18).
bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",singleR,17,20). bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",singleS,20,21). bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,20,22).
bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,22,23). bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,23,24). bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",double,24,241).
bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,241,242). bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,24,25). bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,25,26).
bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",single,25,27). bond("4α-formyl-stigmasta-7,24(241)-dien-3β-ol",double,28,32).

atom("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",1..24,carb). atom("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",241,carb). atom("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",242,carb).
atom("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",25..28,carb). atom("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",31..33,oxyg).
bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,1,2). bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,1,10). bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,2,3).
bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,3,4). bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",singleR,3,31). bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,4,5).
bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",singleS,4,28). bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,5,6). bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,5,10).
bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,6,7). bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",double,7,8). bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,8,9).
bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,8,14). bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,9,10). bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,9,11).
bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",singleR,10,19). bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,11,12). bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,12,13).
bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,13,14). bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,14,15). bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,15,16).
bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,16,17). bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,13,17). bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",singleR,13,18).
bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",singleR,17,20). bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",singleS,20,21). bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,20,22).
bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,22,23). bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,23,24). bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",double,24,241).
bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,241,242). bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,24,25). bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,25,26).
bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,25,27). bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",double,28,32). bond("4α-carboxy-stigmasta-7,24(241)-dien-3β-ol",single,28,33).

atom("avenastenone",1..24,carb). atom("avenastenone",241,carb). atom("avenastenone",242,carb).
atom("avenastenone",25..27,carb). atom("avenastenone",31,oxyg).
bond("avenastenone",single,1,2). bond("avenastenone",single,1,10). bond("avenastenone",single,2,3).
bond("avenastenone",single,3,4). bond("avenastenone",double,3,31). bond("avenastenone",single,4,5).
bond("avenastenone",single,5,6). bond("avenastenone",single,5,10). bond("avenastenone",single,6,7).
bond("avenastenone",double,7,8). bond("avenastenone",single,8,9). bond("avenastenone",single,8,14).
bond("avenastenone",single,9,10). bond("avenastenone",single,9,11). bond("avenastenone",singleR,10,19).
bond("avenastenone",single,11,12). bond("avenastenone",single,12,13). bond("avenastenone",single,13,14).
bond("avenastenone",single,14,15). bond("avenastenone",single,15,16). bond("avenastenone",single,16,17).
bond("avenastenone",single,13,17). bond("avenastenone",singleR,13,18). bond("avenastenone",singleR,17,20).
bond("avenastenone",singleS,20,21). bond("avenastenone",single,20,22). bond("avenastenone",single,22,23).
bond("avenastenone",single,23,24). bond("avenastenone",double,24,241). bond("avenastenone",single,241,242).
bond("avenastenone",single,24,25). bond("avenastenone",single,25,26). bond("avenastenone",single,25,27).

atom("avenasterol",1..24,carb). atom("avenasterol",241,carb). atom("avenasterol",242,carb).
atom("avenasterol",25..27,carb). atom("avenasterol",31,oxyg).
bond("avenasterol",single,1,2). bond("avenasterol",single,1,10). bond("avenasterol",single,2,3).
bond("avenasterol",single,3,4). bond("avenasterol",singleR,3,31). bond("avenasterol",single,4,5).
bond("avenasterol",single,5,6). bond("avenasterol",single,5,10). bond("avenasterol",single,6,7).
bond("avenasterol",double,7,8). bond("avenasterol",single,8,9). bond("avenasterol",single,8,14).
bond("avenasterol",single,9,10). bond("avenasterol",single,9,11). bond("avenasterol",singleR,10,19).
bond("avenasterol",single,11,12). bond("avenasterol",single,12,13). bond("avenasterol",single,13,14).
bond("avenasterol",single,14,15). bond("avenasterol",single,15,16). bond("avenasterol",single,16,17).
bond("avenasterol",single,13,17). bond("avenasterol",singleR,13,18). bond("avenasterol",singleR,17,20).
bond("avenasterol",singleS,20,21). bond("avenasterol",single,20,22). bond("avenasterol",single,22,23).
bond("avenasterol",single,23,24). bond("avenasterol",double,24,241). bond("avenasterol",single,241,242).
bond("avenasterol",single,24,25). bond("avenasterol",single,25,26). bond("avenasterol",single,25,27).

atom("5-dehydroavenasterol",1..24,carb). atom("5-dehydroavenasterol",241,carb). atom("5-dehydroavenasterol",242,carb).
atom("5-dehydroavenasterol",25..27,carb). atom("5-dehydroavenasterol",31,oxyg).
bond("5-dehydroavenasterol",single,1,2). bond("5-dehydroavenasterol",single,1,10). bond("5-dehydroavenasterol",single,2,3).
bond("5-dehydroavenasterol",single,3,4). bond("5-dehydroavenasterol",singleR,3,31). bond("5-dehydroavenasterol",single,4,5).
bond("5-dehydroavenasterol",double,5,6). bond("5-dehydroavenasterol",single,5,10). bond("5-dehydroavenasterol",single,6,7).
bond("5-dehydroavenasterol",double,7,8). bond("5-dehydroavenasterol",single,8,9). bond("5-dehydroavenasterol",single,8,14).
bond("5-dehydroavenasterol",single,9,10). bond("5-dehydroavenasterol",single,9,11). bond("5-dehydroavenasterol",singleR,10,19).
bond("5-dehydroavenasterol",single,11,12). bond("5-dehydroavenasterol",single,12,13). bond("5-dehydroavenasterol",single,13,14).
bond("5-dehydroavenasterol",single,14,15). bond("5-dehydroavenasterol",single,15,16). bond("5-dehydroavenasterol",single,16,17).
bond("5-dehydroavenasterol",single,13,17). bond("5-dehydroavenasterol",singleR,13,18). bond("5-dehydroavenasterol",singleR,17,20).
bond("5-dehydroavenasterol",singleS,20,21). bond("5-dehydroavenasterol",single,20,22). bond("5-dehydroavenasterol",single,22,23).
bond("5-dehydroavenasterol",single,23,24). bond("5-dehydroavenasterol",double,24,241). bond("5-dehydroavenasterol",single,241,242).
bond("5-dehydroavenasterol",single,24,25). bond("5-dehydroavenasterol",single,25,26). bond("5-dehydroavenasterol",single,25,27).

atom("fucosterol",1..24,carb). atom("fucosterol",241,carb). atom("fucosterol",242,carb).
atom("fucosterol",25..27,carb). atom("fucosterol",31,oxyg).
bond("fucosterol",single,1,2). bond("fucosterol",single,1,10). bond("fucosterol",single,2,3).
bond("fucosterol",single,3,4). bond("fucosterol",singleR,3,31). bond("fucosterol",single,4,5).
bond("fucosterol",double,5,6). bond("fucosterol",single,5,10). bond("fucosterol",single,6,7).
bond("fucosterol",single,7,8). bond("fucosterol",single,8,9). bond("fucosterol",single,8,14).
bond("fucosterol",single,9,10). bond("fucosterol",single,9,11). bond("fucosterol",singleR,10,19).
bond("fucosterol",single,11,12). bond("fucosterol",single,12,13). bond("fucosterol",single,13,14).
bond("fucosterol",single,14,15). bond("fucosterol",single,15,16). bond("fucosterol",single,16,17).
bond("fucosterol",single,13,17). bond("fucosterol",singleR,13,18). bond("fucosterol",singleR,17,20).
bond("fucosterol",singleS,20,21). bond("fucosterol",single,20,22). bond("fucosterol",single,22,23).
bond("fucosterol",single,23,24). bond("fucosterol",double,24,241). bond("fucosterol",single,241,242).
bond("fucosterol",single,24,25). bond("fucosterol",single,25,26). bond("fucosterol",single,25,27).

% episterol branch

atom("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",1..24,carb). atom("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",241,carb). atom("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",25..28,carb).
atom("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",31..32,oxyg).
bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,1,2). bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,1,10). bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,2,3).
bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,3,4). bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",singleR,3,31). bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,4,5).
bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",singleS,4,28). bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,5,6). bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,5,10).
bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,6,7). bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",double,7,8). bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,8,9).
bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,8,14). bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,9,10). bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,9,11).
bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",singleR,10,19). bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,11,12). bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,12,13).
bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,13,14). bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,14,15). bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,15,16).
bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,16,17). bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,13,17). bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",singleR,13,18).
bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",singleR,17,20). bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",singleS,20,21). bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,20,22).
bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,22,23). bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,23,24). bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",double,24,241).
bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,24,25). bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,25,26). bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,25,27).
bond("4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol",single,28,32).

atom("4α-formyl-ergosta-7,24(241)-dien-3β-ol",1..24,carb). atom("4α-formyl-ergosta-7,24(241)-dien-3β-ol",241,carb). atom("4α-formyl-ergosta-7,24(241)-dien-3β-ol",25..28,carb).
atom("4α-formyl-ergosta-7,24(241)-dien-3β-ol",31..32,oxyg).
bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",single,1,2). bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",single,1,10). bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",single,2,3).
bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",single,3,4). bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",singleR,3,31). bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",single,4,5).
bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",singleS,4,28). bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",single,5,6). bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",single,5,10).
bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",single,6,7). bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",double,7,8). bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",single,8,9).
bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",single,8,14). bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",single,9,10). bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",single,9,11).
bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",singleR,10,19). bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",single,11,12). bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",single,12,13).
bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",single,13,14). bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",single,14,15). bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",single,15,16).
bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",single,16,17). bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",single,13,17). bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",singleR,13,18).
bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",singleR,17,20). bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",singleS,20,21). bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",single,20,22).
bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",single,22,23). bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",single,23,24). bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",double,24,241).
bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",single,24,25). bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",single,25,26). bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",single,25,27).
bond("4α-formyl-ergosta-7,24(241)-dien-3β-ol",double,28,32).

atom("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",1..24,carb). atom("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",241,carb). atom("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",25..28,carb).
atom("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",31..33,oxyg).
bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",single,1,2). bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",single,1,10). bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",single,2,3).
bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",single,3,4). bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",singleR,3,31). bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",single,4,5).
bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",singleS,4,28). bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",single,5,6). bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",single,5,10).
bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",single,6,7). bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",double,7,8). bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",single,8,9).
bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",single,8,14). bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",single,9,10). bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",single,9,11).
bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",singleR,10,19). bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",single,11,12). bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",single,12,13).
bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",single,13,14). bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",single,14,15). bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",single,15,16).
bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",single,16,17). bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",single,13,17). bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",singleR,13,18).
bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",singleR,17,20). bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",singleS,20,21). bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",single,20,22).
bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",single,22,23). bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",single,23,24). bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",double,24,241).
bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",single,24,25). bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",single,25,26). bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",single,25,27).
bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",double,28,32). bond("4α-carboxy-ergosta-7,24(241)-dien-3β-ol",double,28,33).

atom("episterone",1..24,carb). atom("episterone",241,carb). atom("episterone",25..27,carb).
atom("episterone",31,oxyg).
bond("episterone",single,1,2). bond("episterone",single,1,10). bond("episterone",single,2,3).
bond("episterone",single,3,4). bond("episterone",double,3,31). bond("episterone",single,4,5).
bond("episterone",single,5,6). bond("episterone",single,5,10). bond("episterone",single,6,7).
bond("episterone",double,7,8). bond("episterone",single,8,9). bond("episterone",single,8,14).
bond("episterone",single,9,10). bond("episterone",single,9,11). bond("episterone",singleR,10,19).
bond("episterone",single,11,12). bond("episterone",single,12,13). bond("episterone",single,13,14).
bond("episterone",single,14,15). bond("episterone",single,15,16). bond("episterone",single,16,17).
bond("episterone",single,13,17). bond("episterone",singleR,13,18). bond("episterone",singleR,17,20).
bond("episterone",singleS,20,21). bond("episterone",single,20,22). bond("episterone",single,22,23).
bond("episterone",single,23,24). bond("episterone",double,24,241). bond("episterone",single,24,25).
bond("episterone",single,25,26). bond("episterone",single,25,27).

atom("episterol",1..24,carb). atom("episterol",241,carb). atom("episterol",25..27,carb).
atom("episterol",31,oxyg).
bond("episterol",single,1,2). bond("episterol",single,1,10). bond("episterol",single,2,3).
bond("episterol",single,3,4). bond("episterol",singleR,3,31). bond("episterol",single,4,5).
bond("episterol",single,5,6). bond("episterol",single,5,10). bond("episterol",single,6,7).
bond("episterol",double,7,8). bond("episterol",single,8,9). bond("episterol",single,8,14).
bond("episterol",single,9,10). bond("episterol",single,9,11). bond("episterol",singleR,10,19).
bond("episterol",single,11,12). bond("episterol",single,12,13). bond("episterol",single,13,14).
bond("episterol",single,14,15). bond("episterol",single,15,16). bond("episterol",single,16,17).
bond("episterol",single,13,17). bond("episterol",singleR,13,18). bond("episterol",singleR,17,20).
bond("episterol",singleS,20,21). bond("episterol",single,20,22). bond("episterol",single,22,23).
bond("episterol",single,23,24). bond("episterol",double,24,241). bond("episterol",single,24,25).
bond("episterol",single,25,26). bond("episterol",single,25,27).

atom("ergosta-5,7,24(28)-trien-3β-ol",1..24,carb). atom("ergosta-5,7,24(28)-trien-3β-ol",241,carb). atom("ergosta-5,7,24(28)-trien-3β-ol",25..27,carb).
atom("ergosta-5,7,24(28)-trien-3β-ol",31,oxyg).
bond("ergosta-5,7,24(28)-trien-3β-ol",single,1,2). bond("ergosta-5,7,24(28)-trien-3β-ol",single,1,10). bond("ergosta-5,7,24(28)-trien-3β-ol",single,2,3).
bond("ergosta-5,7,24(28)-trien-3β-ol",single,3,4). bond("ergosta-5,7,24(28)-trien-3β-ol",singleR,3,31). bond("ergosta-5,7,24(28)-trien-3β-ol",single,4,5).
bond("ergosta-5,7,24(28)-trien-3β-ol",double,5,6). bond("ergosta-5,7,24(28)-trien-3β-ol",single,5,10). bond("ergosta-5,7,24(28)-trien-3β-ol",single,6,7).
bond("ergosta-5,7,24(28)-trien-3β-ol",double,7,8). bond("ergosta-5,7,24(28)-trien-3β-ol",single,8,9). bond("ergosta-5,7,24(28)-trien-3β-ol",single,8,14).
bond("ergosta-5,7,24(28)-trien-3β-ol",single,9,10). bond("ergosta-5,7,24(28)-trien-3β-ol",single,9,11). bond("ergosta-5,7,24(28)-trien-3β-ol",singleR,10,19).
bond("ergosta-5,7,24(28)-trien-3β-ol",single,11,12). bond("ergosta-5,7,24(28)-trien-3β-ol",single,12,13). bond("ergosta-5,7,24(28)-trien-3β-ol",single,13,14).
bond("ergosta-5,7,24(28)-trien-3β-ol",single,14,15). bond("ergosta-5,7,24(28)-trien-3β-ol",single,15,16). bond("ergosta-5,7,24(28)-trien-3β-ol",single,16,17).
bond("ergosta-5,7,24(28)-trien-3β-ol",single,13,17). bond("ergosta-5,7,24(28)-trien-3β-ol",singleR,13,18). bond("ergosta-5,7,24(28)-trien-3β-ol",singleR,17,20).
bond("ergosta-5,7,24(28)-trien-3β-ol",singleS,20,21). bond("ergosta-5,7,24(28)-trien-3β-ol",single,20,22). bond("ergosta-5,7,24(28)-trien-3β-ol",single,22,23).
bond("ergosta-5,7,24(28)-trien-3β-ol",single,23,24). bond("ergosta-5,7,24(28)-trien-3β-ol",double,24,241). bond("ergosta-5,7,24(28)-trien-3β-ol",single,24,25).
bond("ergosta-5,7,24(28)-trien-3β-ol",single,25,26). bond("ergosta-5,7,24(28)-trien-3β-ol",single,25,27).

% Sterols from PWY-8191

atom("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",1..30,carb). atom("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",31,oxyg). atom("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",33,oxyg).
bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,1,2). bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,1,10). bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,2,3).
bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,3,4). bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",singleR,3,31). bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,4,5).
bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",singleR,4,29). bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",singleS,4,28). bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,5,6).
bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,5,10). bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,6,7). bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,7,8).
bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,8,9). bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,8,14). bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,9,10).
bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,9,11).bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",singleR,9,19). bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",singleR,10,19).
bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,11,12). bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,12,13). bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,13,14).
bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,14,15). bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",singleS,14,30). bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,15,16).
bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,16,17). bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,13,17). bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",singleR,13,18).
bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",singleR,17,20). bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",singleS,20,21). bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,20,22).
bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,22,23). bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,23,24). bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",double,24,25).
bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,25,26). bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,25,27). bond("(3β,9β)-4α-demethyl-4α-methylhydroxy-9,19-cyclolanost-24-en-3-ol",single,29,33).

atom("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",1..30,carb). atom("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",31,oxyg). atom("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",33,oxyg).
bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",single,1,2). bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",single,1,10). bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",single,2,3).
bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",single,3,4). bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",singleR,3,31). bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",single,4,5).
bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",singleR,4,29). bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",singleS,4,28). bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",single,5,6).
bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",single,5,10). bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",single,6,7). bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",single,7,8).
bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",single,8,9). bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",single,8,14). bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",single,9,10).
bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",single,9,11).bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",singleR,9,19). bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",singleR,10,19).
bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",single,11,12). bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",single,12,13). bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",single,13,14).
bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",single,14,15). bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",singleS,14,30). bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",single,15,16).
bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",single,16,17). bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",single,13,17). bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",singleR,13,18).
bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",singleR,17,20). bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",singleS,20,21). bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",single,20,22).
bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",single,22,23). bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",single,23,24). bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",double,24,25).
bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",single,25,26). bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",single,25,27). bond("(3β,9β)-4α-demethyl-4α-formyl-9,19-cyclolanost-24-en-3-ol",double,29,33).

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

atom("24-methyldesmosterol",1..24,carb). atom("24-methyldesmosterol",241,carb). atom("24-methyldesmosterol",25..27,carb).
atom("24-methyldesmosterol",31,oxyg).
bond("24-methyldesmosterol",single,1,2). bond("24-methyldesmosterol",single,1,10). bond("24-methyldesmosterol",single,2,3).
bond("24-methyldesmosterol",single,3,4). bond("24-methyldesmosterol",singleR,3,31). bond("24-methyldesmosterol",single,4,5).
bond("24-methyldesmosterol",double,5,6). bond("24-methyldesmosterol",single,5,10). bond("24-methyldesmosterol",single,6,7).
bond("24-methyldesmosterol",single,7,8). bond("24-methyldesmosterol",single,8,9). bond("24-methyldesmosterol",single,8,14).
bond("24-methyldesmosterol",single,9,10). bond("24-methyldesmosterol",single,9,11). bond("24-methyldesmosterol",singleR,10,19).
bond("24-methyldesmosterol",single,11,12). bond("24-methyldesmosterol",single,12,13). bond("24-methyldesmosterol",single,13,14).
bond("24-methyldesmosterol",single,14,15). bond("24-methyldesmosterol",single,15,16). bond("24-methyldesmosterol",single,16,17).
bond("24-methyldesmosterol",single,13,17). bond("24-methyldesmosterol",singleR,13,18). bond("24-methyldesmosterol",singleR,17,20).
bond("24-methyldesmosterol",singleS,20,21). bond("24-methyldesmosterol",single,20,22). bond("24-methyldesmosterol",single,22,23).
bond("24-methyldesmosterol",single,23,24). bond("24-methyldesmosterol",singleR,24,241). bond("24-methyldesmosterol",double,24,25).
bond("24-methyldesmosterol",single,25,26). bond("24-methyldesmosterol",single,25,27).


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


% PWY-2541
reaction(rxn_4021,"cycloartenol","24-methylenecycloartanol").
reaction(rxn_11926,"24-methylenecycloartanol","4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol").
reaction(rxn_11925,"4α-hydroxymethyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol","4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol").
reaction(rxn_11927,"4α-formyl,4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol","4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol").
reaction(rxn_11928,"4α-carboxy-4β,14α-dimethyl-9β,19-cyclo-5α-ergost-24(241)-en-3β-ol","cycloeucalenone").
reaction(rxn_11929,"cycloeucalenone","cycloeucalenol").
reaction(cycloeucalenol_cycloisomerase_rxn,"cycloeucalenol","obtusifoliol").
reaction(obtusifoliol_demethylase,"obtusifoliol","4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol").
reaction(rxn_4144,"4α-methyl-5α-ergosta-8,14,24(28)-trien-3β-ol","4α-methyl-5α-ergosta-8,24-dien-3β-ol").
reaction(rxn_4161,"4α-methyl-5α-ergosta-8,24-dien-3β-ol","24-methylenelophenol").
reaction(c24_methyltransferase,"24-methylenelophenol","24-ethylidenelophenol").
reaction(rxn_11935,"24-ethylidenelophenol","4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol").
reaction(rxn_11936,"4α-hydroxymethyl-stigmasta-7,24(241)-dien-3β-ol","4α-formyl-stigmasta-7,24(241)-dien-3β-ol").
reaction(rxn_11937,"4α-formyl-stigmasta-7,24(241)-dien-3β-ol","4α-carboxy-stigmasta-7,24(241)-dien-3β-ol").
reaction(rxn_11938,"4α-carboxy-stigmasta-7,24(241)-dien-3β-ol","avenastenone").
reaction(rxn_11939,"avenastenone","avenasterol").
reaction(rxn_4209,"avenasterol","5-dehydroavenasterol").
reaction(rxn_4210,"5-dehydroavenasterol","fucosterol").
reaction(rxn_11930,"24-methylenelophenol","4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol").
reaction(rxn_11931,"4α-hydroxymethyl-ergosta-7,24(241)-dien-3β-ol","4α-formyl-ergosta-7,24(241)-dien-3β-ol").
reaction(rxn_11932,"4α-formyl-ergosta-7,24(241)-dien-3β-ol","4α-carboxy-ergosta-7,24(241)-dien-3β-ol").
reaction(rxn_11933,"4α-carboxy-ergosta-7,24(241)-dien-3β-ol","episterone").
reaction(rxn_11934,"episterone","episterol").
reaction(rxn3o_218,"episterol","ergosta-5,7,24(28)-trien-3β-ol").
reaction(rxn_707,"ergosta-5,7,24(28)-trien-3β-ol","24-methylenecholesterol").
reaction(rxn_4222,"24-methylenecholesterol","24-methyldesmosterol").
reaction(rxn_708,"24-methyldesmosterol","campesterol").
reaction(rxn_2_1_1_143,"24-methylenelophenol","24-ethylidenelophenol").
reaction(rxn_20131,"24-methylenecholesterol","campesterol").
reaction(c22_desaturation,"campesterol","brassicasterol").



% Molecules absent in the organism.

absentmolecules("ergosterol").
absentmolecules("zymosterol").
absentmolecules("lanosterol").
absentmolecules("lathosterol").
absentmolecules("sitosterol").


% Source molecule for inference.

source("cycloartenol").


% Initiation of incremental grounding.
init(pathway("cycloartenol","cholesterol")).
goal(pathway("cycloartenol","stigmasterol")).
goal(pathway("cycloartenol","fucosterol")).

%* Expected inferred reactions: 

reaction(c28_methylation, "brassicasterol", "stigmasterol"). 
*%