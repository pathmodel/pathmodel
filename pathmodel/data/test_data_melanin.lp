atom("AT4HN",1..12,carb). atom("AT4HN",13..17,oxyg).
bond("AT4HN",simple,1,2). bond("AT4HN",double,1,6). bond("AT4HN",double,2,3).
bond("AT4HN",simple,3,4). bond("AT4HN",double,4,5). bond("AT4HN",simple,5,6).
bond("AT4HN",simple,4,7). bond("AT4HN",simple,5,10). bond("AT4HN",double,7,8).
bond("AT4HN",simple,8,9). bond("AT4HN",double,9,10). bond("AT4HN",simple,1,11).
bond("AT4HN",simple,11,12). bond("AT4HN",double,11,13). bond("AT4HN",simple,2,14).
bond("AT4HN",simple,8,15). bond("AT4HN",simple,10,16). bond("AT4HN",simple,6,17).

atom("3AF",1..12,carb). atom("3AF",13..18,oxyg).
bond("3AF",double,1,2). bond("3AF",simple,1,6). bond("3AF",simple,2,3).
bond("3AF",simple,3,4). bond("3AF",double,4,5). bond("3AF",simple,5,6).
bond("3AF",simple,4,7). bond("3AF",simple,5,10). bond("3AF",double,7,8).
bond("3AF",simple,8,9). bond("3AF",double,9,10). bond("3AF",simple,1,11).
bond("3AF",simple,11,12). bond("3AF",double,11,13). bond("3AF",simple,2,14).
bond("3AF",simple,8,15). bond("3AF",simple,10,16). bond("3AF",double,6,17).
bond("3AF",double,3,18).

atom("T4HN",1..10,carb). atom("T4HN",14..17,oxyg).
bond("T4HN",simple,1,2). bond("T4HN",double,1,6). bond("T4HN",double,2,3).
bond("T4HN",simple,3,4). bond("T4HN",double,4,5). bond("T4HN",simple,5,6).
bond("T4HN",simple,4,7). bond("T4HN",simple,5,10). bond("T4HN",double,7,8).
bond("T4HN",simple,8,9). bond("T4HN",double,9,10). bond("T4HN",simple,2,14).
bond("T4HN",simple,8,15). bond("T4HN",simple,10,16). bond("T4HN",simple,6,17).

atom("Flaviolin",1..10,carb). atom("Flaviolin",14..18,oxyg).
bond("Flaviolin",double,1,2). bond("Flaviolin",simple,1,6). bond("Flaviolin",simple,2,3).
bond("Flaviolin",simple,3,4). bond("Flaviolin",double,4,5). bond("Flaviolin",simple,5,6).
bond("Flaviolin",simple,4,7). bond("Flaviolin",simple,5,10). bond("Flaviolin",double,7,8).
bond("Flaviolin",simple,8,9). bond("Flaviolin",double,9,10). bond("Flaviolin",simple,2,14).
bond("Flaviolin",simple,8,15). bond("Flaviolin",simple,10,16). bond("Flaviolin",double,6,17).
bond("Flaviolin",double,3,18).

reaction(oxydation_1,"AT4HN", "3AF").

source("T4HN").

init(pathway("AT4HN","3AF")).
goal(pathway("T4HN","Flaviolin")).

domain(MoleculeName, test) :- atom(MoleculeName,1..12,carb), atom(MoleculeName,13..17,oxyg),
                    bond(MoleculeName,BondType1,1,2), bond(MoleculeName,BondType2,1,6), bond(MoleculeName,BondType3,2,3),
                    bond(MoleculeName,BondType4,3,4), bond(MoleculeName,BondType5,4,5), bond(MoleculeName,BondType6,5,6),
                    bond(MoleculeName,BondType7,4,7), bond(MoleculeName,BondType8,5,10), bond(MoleculeName,BondType9,7,8).
