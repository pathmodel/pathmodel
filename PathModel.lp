 %*
Search of metabolic pathways
allowing to reach  output metabolites from a set of input metabolites
*%

%* General definitions
%%%%%%%%%%%%%%%%%%%%%%%
*%

%*
Chemical variable:
valence(Atom type, Number of valence)
*%
valence(carb, 4). valence(nitr, 3). valence(oxyg, 2).

%atom provides the atom numbers in a compound
atom(MoleculeName, AtomNumber):- component(MoleculeName, AtomNumber, _). 
%nbatoms provides the total number of atoms in a compound
nbatoms(MoleculeName, N):- atom(MoleculeName, N); not atom(MoleculeName, N+1). 

% A side chain in a compound M is a maximal suite of carbons starting from atom number 1. It ends at atom number End
sidechain(M,1,End):-  component(M,End,carb); component(M,End+1,A); A!=carb; component(M,X,carb):X=1..End.
%sidechain(M,Start1+1,End):-  component(M,End,carb), component(M,End+1,A), A!=carb, 
%	component(M,Start1,B), B!=carb, Start1>0, component(M,X,carb): X=Start1+1..End-1.

%*
Definition of domain
class(MoleculeName, DomainName)

Definition of sterane
Based on the wikipedia structure: https://fr.wikipedia.org/wiki/St%C3%A9rane#/media/File:Steran_num_ABCD.svg
One exception the bound between carbone 7 and carbone 8 has variable for the bond type to include the 7-dehydrocholesterol
because of the double bond instead of the simple.
*%
class(MoleculeName, sterane) :- component(MoleculeName,1..17,carb),
									link(MoleculeName,simple,1,2), link(MoleculeName,simple,1,10), link(MoleculeName,simple,2,3),
									link(MoleculeName,simple,3,4), link(MoleculeName,simple,4,5), link(MoleculeName,double,5,6),
									link(MoleculeName,simple,5,10), link(MoleculeName,simple,6,7), link(MoleculeName,BondType,7,8),
									link(MoleculeName,simple,8,9), link(MoleculeName,simple,8,14), link(MoleculeName,simple,9,10),
									link(MoleculeName,simple,9,11), link(MoleculeName,simple,11,12), link(MoleculeName,simple,12,13),
									link(MoleculeName,simple,13,14), link(MoleculeName,simple,13,17), link(MoleculeName,simple,14,15),
									link(MoleculeName,simple,15,16), link(MoleculeName,simple,16,17).

% Definition of a cyclohexene
class(MoleculeName, cyclohexene) :- component(MoleculeName,1..6,carb),
									link(MoleculeName,double,1,2), link(MoleculeName,simple,2,3), link(MoleculeName,simple,3,4),
									link(MoleculeName,simple,4,5), link(MoleculeName,simple,5,6), link(MoleculeName,simple,1,6).

% componentClass(DomainName, NumberOfAtom)
componentClass(sterane,1..17,17).
componentClass(cyclohexene,1..6,6).

%* Definition of atomic masses
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*%

%*
m_hydr = 1.0074, m_carb = 12.0107,  m_oxyg = 15.9994 ,  m_nitr=14.0067.
*%
%énumérer les liens de chaque atome C,N,O, et de rajouter autant de H pour que nb_H = valence (atome) - nb_link(atome), sachant que valence(oxyg)=2, valence(nitr)=3 et valence(carb)=4.

%*
mz(newcompound)=nb_carb(newcompound) x m_carb + nb_oxyg(newcompound) x m_oxyg + nb_nitr(newcompound) x m_nitr + nb_hydr(newcompound) x m_hydr
*%

% M/Q Ratio
% numberBonds provides the number of link for each atom.
% numberBonds(Molecule's name, Atom Number, Number of bonds for the corresponding atom number)
numberBonds(MoleculeName, AtomNumber, NumberOfBonds) :-  NumberOfBonds=#sum{2, SecondAtomNumber: link(MoleculeName, double, AtomNumber, SecondAtomNumber);
																2, SecondAtomNumber: link(MoleculeName, double, SecondAtomNumber, AtomNumber);
																1, SecondAtomNumber: link(MoleculeName, BoundType, AtomNumber, SecondAtomNumber), BoundType != double;
																1, SecondAtomNumber: link(MoleculeName, BoundType, SecondAtomNumber, AtomNumber), BoundType != double}; atom(MoleculeName, AtomNumber).
																
% numberHydrogens provides the number of hydrogens associated with each atoms.
% numberHydrogens(MoleculeName, AtomNumber, number of Hydrogen bonded with the atom)
numberHydrogens(MoleculeName, AtomNumber, ValenceNumber - NumberOfBonds) :- numberBonds(MoleculeName, AtomNumber, NumberOfBonds), component(MoleculeName, AtomNumber, AtomeType), valence(AtomeType, ValenceNumber).

% moleculeComposition shows the number of Carbon, Hydrogen, Oxygen and Nitrogen in the molecule.
% moleculeComposition(MoleculeName, Number of Carbon, Number of Hydrogen, Number of Oxygen, Number of Nitrogen)
moleculeComposition(MoleculeName, NumberCarbon, NumberHydrogen, NumberOxygen, NumberNitrogen) :- NumberHydrogen=#sum{NumberHydrogenAtom, AtomNumber: numberHydrogens(MoleculeName, AtomNumber, NumberHydrogenAtom)},
													NumberCarbon=#sum{1, AtomNumber: component(MoleculeName, AtomNumber , carb)}, NumberOxygen=#sum{1, AtomNumber: component(MoleculeName, AtomNumber , oxyg)},
													NumberNitrogen=#sum{1, AtomNumber: component(MoleculeName, AtomNumber , nitr)}, atom(MoleculeName, AtomeNumber).

% moleculeMZ computes the M/Q ratio for each molecule.
% moleculeMZ(MoleculeName, M/Q ratio*10000)
% Because in ASP there is no decimal, all the atomic masses have been multiplied by 10 0000. If you want the real M/Q ratio divide the M/Q ratio by 10 0000.
% Approximation like at PubChem: 120110*NumberCarbon + 10080*NumberHydrogen + 159990*NumberOxygen + 140070*NumberNitrogen
% 120107*NumberCarbon + 100794*NumberHydrogen + 159994*NumberOxygen + 140067*NumberNitrogen
% 1200960*NumberCarbon + 100784*NumberHydrogen + 1599903*NumberOxygen + 1400643*NumberNitrogen (here multiplied by 100 000) <- from https://www.degruyter.com/downloadpdf/j/pac.2016.88.issue-3/pac-2015-0305/pac-2015-0305.pdf
% 1201160*NumberCarbon + 100811*NumberHydrogen + 1599977*NumberOxygen + 1400728*NumberNitrogen (here multiplied by 100 000) <- from https://www.degruyter.com/downloadpdf/j/pac.2016.88.issue-3/pac-2015-0305/pac-2015-0305.pdf
moleculeMZ(MoleculeName, 120110*NumberCarbon + 10080*NumberHydrogen + 159990*NumberOxygen + 140070*NumberNitrogen) :- moleculeComposition(MoleculeName, NumberCarbon, NumberHydrogen, NumberOxygen, NumberNitrogen).


%* Definition of input and output from reaction
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*%

reactiontype(T):- reaction(T,_,_,_,_,_). 
reactionType(TypeOfReaction):- reaction(TypeOfReaction,_,_).
output_metabolite(M):- reaction(_,_,_,_,_,M).
output_metabolite(MoleculeName):- reaction(_,_,MoleculeName).
input_metabolite(MoleculeName):- component(MoleculeName,_,_); not output_metabolite(MoleculeName).

%* Test to see difference between two molecules
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*%

difmolecules(MoleculeName1, MoleculeName2, BondType, FirstAtomNumber, SecondAtomNumber,direct):- link(MoleculeName1, BondType, FirstAtomNumber, SecondAtomNumber),
not link(MoleculeName2, BondType, FirstAtomNumber, SecondAtomNumber), MoleculeName1="6α-hydroxycholest-4,22-diene-3-one", MoleculeName2="stigmasterol".
difmolecules(MoleculeName1, MoleculeName2, BondType, FirstAtomNumber, SecondAtomNumber,reverse):- link(MoleculeName2, BondType, FirstAtomNumber, SecondAtomNumber),
not link(MoleculeName1, BondType, FirstAtomNumber, SecondAtomNumber), MoleculeName1="6α-hydroxycholest-4,22-diene-3-one", MoleculeName2="stigmasterol".

difmolecules(MoleculeName1, MoleculeName2, BondType, FirstAtomNumber, SecondAtomNumber,direct):- link(MoleculeName1, BondType, FirstAtomNumber, SecondAtomNumber),
not link(MoleculeName2, BondType, FirstAtomNumber, SecondAtomNumber), MoleculeName1="6α-hydroxycholest-4-ene-3-one", MoleculeName2="sitosterol".
difmolecules(MoleculeName1, MoleculeName2, BondType, FirstAtomNumber, SecondAtomNumber,reverse):- link(MoleculeName2, BondType, FirstAtomNumber, SecondAtomNumber),
not link(MoleculeName1, BondType, FirstAtomNumber, SecondAtomNumber), MoleculeName1="6α-hydroxycholest-4-ene-3-one", MoleculeName2="sitosterol".


%* Inference Method
%%%%%%%%%%%%%%%%%%%
*%

% Rule to infer new punctual reactions: metabolite Y can be the product of metabolite X by reaction R 
% if all their needed atoms are present, and if all other atoms of X and Y are the same
% Check if all the molecule have a domain in common.
% But it needs a domain compatible with the reaction.
%*
newreaction(R,P1,P2):- need_reaction(R,P3,before,N); reaction(R,P3,P4); output_metabolite(P1); input_metabolite(P2);
	component(P1,I,A):component(P3,I,A),I=1..N-1; component(P2,I,A):component(P4,I,A),I=1..N-1;
	component(P1,I,A):component(P2,I,A),I>=N; component(P2,I,A):component(P1,I,A),I>=N; 
	link(P1,T,I,J):link(P3,T,I,J),I=1..N-1; link(P2,T,I,J):link(P4,T,I,J),I=1..N-1; 
	link(P1,T,I,J):link(P2,T,I,J),I>=N; link(P2,T,I,J):link(P1,T,I,J),I>=N.
*%
newreaction(R,P1,P2):- need_reaction(R,P3,before,N,U); reaction(R,P3,P4); output_metabolite(P1); input_metabolite(P2);
	% Check if the four molecules have the same domain.
	class(P1,Domain);class(P2,Domain);class(P3,Domain);class(P4,Domain);
	% Check if atoms in the domain are the same between P1/P3 and P2/P4. (Now useless with the Domain?)
	component(P1,I,A):component(P3,I,A),componentClass(Domain,I,Imax),A<=Imax; component(P2,I,A):component(P4,I,A),componentClass(Domain,I,Imax),A<=Imax;
	% Check if atoms between the domain and the reaction are the same between P1/P3 and P2/P4.
	component(P1,X,A):component(P3,X,A),componentClass(Domain,_,Imax),X=Imax..N,A<=U; component(P2,X,A):component(P4,X,A),componentClass(Domain,_,Imax),X=Imax..N,A<=U;
	% Check if atoms after the reaction are the same between P1/P2.
	component(P1,I,A):component(P2,I,A),not componentClass(Domain,I,_),I>U; component(P2,I,A):component(P1,I,A),not componentClass(Domain,I,_),I>U;
	% Check if atoms around the domain are identiques between P1 and P2.
	component(P1,I,A):component(P2,I,A),componentClass(Domain,I,_); component(P2,I,A):component(P1,I,A),componentClass(Domain,I,_);
	% Check if links in the domain are the same between P1/P3 and P2/P4. (Now useless with the Domain?)
	link(P1,T,I,J):link(P3,T,I,J),componentClass(Domain,I,Imax),J<=Imax; link(P2,T,I,J):link(P4,T,I,J),componentClass(Domain,I,Imax),J<=Imax;
	% Check if links between the domain and the reaction are the same between P1/P3 and P2/P4.
	link(P1,T,X,J):link(P3,T,X,J),componentClass(Domain,_,Imax),X=Imax..N,J<=U; link(P2,T,X,J):link(P4,T,X,J),componentClass(Domain,_,Imax),X=Imax..N,J<=U;
	% Check if links after the reaction are the same between P1/P2.
	link(P1,T,I,J):link(P2,T,I,J),not componentClass(Domain,I,_),I>U; link(P2,T,I,J):link(P1,T,I,J),not componentClass(Domain,I,_),I>U;
	% Check if links around the domain are identiques between P1 and P2.
	link(P1,T,I,J):link(P2,T,I,J),componentClass(Domain,I,_); link(P2,T,I,J):link(P1,T,I,J),componentClass(Domain,I,_).

% Defining the result of generic reactions

% Compound P resulting from the C5_desaturation of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P
component(P,I,A):- reaction(c5_desaturation,R,P); component(R,I,A).
% the 5-6 link is transformed from simple in R to double in P
link(P,double,5,6):-reaction(c5_desaturation,R,P); link(R,simple,5,6).
% all other links from R are mapped to P
link(P,T,I,J):-reaction(c5_desaturation,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,simple,5,6).


% Compound P resulting from the C22_desaturation of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P
component(P,I,A):- reaction(c22_desaturation,R,P); component(R,I,A).
% the 22-23 link is transformed from simple in R to double in P
link(P,double,22,23):-reaction(c22_desaturation,R,P); link(R,simple,22,23).
% all other links from R are mapped to P
link(P,T,I,J):-reaction(c22_desaturation,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,simple,22,23).


% Compound P resulting from the delta7reduction of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P
component(P,I,A):- reaction(delta7reduction,R,P); component(R,I,A).
% the 7-8 link is transformed from double in R to simple in P
link(P,simple,7,8):-reaction(delta7reduction,R,P); link(R,double,7,8).
% all other links from R are mapped to P
link(P,T,I,J):-reaction(delta7reduction,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,double,7,8).

% Compound P resulting from the delta24_25_reduction of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P
component(P,I,A):- reaction(delta24_25_reduction,R,P); component(R,I,A).
% the 24-29 link is transformed from double in R to simple in P
link(P,simple,24,25):-reaction(delta24_25_reduction,R,P); link(R,double,24,25).
% all other links from R are mapped to P
link(P,T,I,J):-reaction(delta24_25_reduction,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,double,24,25).

% Compound P resulting from the delta24_241_reduction of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P
component(P,I,A):- reaction(delta24_241_reduction,R,P); component(R,I,A).
% the 24-241 link is transformed from double in R to simple in P
link(P,simple,24,241):-reaction(delta24_241_reduction,R,P); link(R,double,24,241).
% all other links from R are mapped to P
link(P,T,I,J):-reaction(delta24_241_reduction,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,double,24,241).

% Compound P resulting from the cyclopropylsterol_isomerisation of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P
component(P,I,A):- reaction(cyclopropylsterol_isomerisation,R,P); component(R,I,A).
% the 8-9 link is transformed from simple in R to double in P
link(P,double,8,9):-reaction(cyclopropylsterol_isomerisation,R,P); link(R,simple,8,9).
% all other links from R are mapped to P, except the 9-19 one
link(P,T,I,J):-reaction(cyclopropylsterol_isomerisation,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,simple,8,9); not link(R,simpleR,9,19).

% Compound P resulting from the c14_reduction of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P
component(P,I,A):- reaction(c14_reduction,R,P); component(R,I,A).
% the 14-15 link is transformed from double in R to simple in P
link(P,simple,14,15):-reaction(c14_reduction,R,P); link(R,double,14,15).
% all other links from R are mapped to P
link(P,T,I,J):-reaction(c14_reduction,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,double,14,15).

% Compound P resulting from the hydrogenation of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P, escept oxyg 22 and 23
component(P,I,A):- reaction(hydrogenation,R,P); component(R,I,A); not component (R,22..23,oxyg).
% all links from R are mapped to P, escept the 21-22 and 21-23 ones
link(P,T,I,J):-reaction(hydrogenation,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,double,21,22); not link(R,simple,21,23).

% Compound P resulting from the c14_demethylation of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P, except carb 29
component(P,I,A):- reaction(c14_demethylation,R,P); component(R,I,A); not component (R,30,carb).
% the 14-15 link is transformed from simple in R to double in P
link(P,double,14,15):-reaction(c14_demethylation,R,P); link(R,simple,14,15).
% all links from R are mapped to P, except the 14-30 one
link(P,T,I,J):-reaction(c14_demethylation,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,simpleS,14,30); link(R,simple,14,15).

% Compound P resulting from the c4_c29_demethylation of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P, except carb 29
component(P,I,A):- reaction(c4_c29_demethylation,R,P); component(R,I,A); not component (R,29,carb).
% all links from R are mapped to P, except the 18-21 one
link(P,T,I,J):-reaction(c4_c29_demethylation,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,simpleR,4,29).

% Compound P resulting from the c4_c28_demethylation of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P, except carb 29
component(P,I,A):- reaction(c4_c28_demethylation,R,P); component(R,I,A); not component (R,28,carb).
% all links from R are mapped to P, except the 18-21 one
link(P,T,I,J):-reaction(c4_c28_demethylation,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,simpleS,4,28).

% Compound P resulting from the demethylation of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P, except carb 21
component(P,I,A):- reaction(demethylation,R,P); component(R,I,A); not component (R,21,carb).
% all links from R are mapped to P, except the 18-21 one
link(P,T,I,J):-reaction(demethylation,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,simple,18,21).

% Compound P resulting from the c8_isomerase of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P, except carb 29
component(P,I,A):- reaction(c8_isomerase,R,P); component(R,I,A).
% the 8-9 link is transformed from simple in R to double in P
link(P,simple,8,9):-reaction(c8_isomerase,R,P); link(R,double,8,9).
% the 7-8 link is transformed from simple in R to double in P
link(P,double,7,8):-reaction(c8_isomerase,R,P); link(R,simple,7,8).
% all links from R are mapped to P
link(P,T,I,J):-reaction(c8_isomerase,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,simple,8,9); link(R,double,7,8).

% Compound P resulting from the dehydration of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P, escept oxyg 20
component(P,I,A):- reaction(dehydration,R,P); component(R,I,A); not component (R,20,oxyg).
% all links from R are mapped to P, escept the 18-19 and 19-20
link(P,T,I,J):-reaction(dehydration,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,simple,18,19); not link(R,simple,19,20).
% the 18-19 link is transformed from simple in R to double in P
link(P,double,18,19):-reaction(dehydration,R,P); link(R,simple,18,19).

% Compound P resulting from the decarboxylation of a compound R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P, escept carb 21, oxyg 22 and 23
component(P,I,A):- reaction(demethylation,R,P); component(R,I,A); I!=21; I!=22; I!=23.
% all links from R are mapped to P, escept 18-21, 21-22 and 22-23
link(P,T,I,J):-reaction(demethylation,R,P); link(R,T,I,J); link(R,T,I,J); not link(R,simple,18,21); not link(R,double,21,22); not link(R,simple,21,23).

% Compound P resulting from the transfer of an aminoacid AA on C3 from compound R 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all atoms from R are mapped to P, except oxyg 10, which is replaced by nitr 5 of the aminoacid
component(P,I,A):- reaction("aminoacid_C-3_transfer",R,AA,P); component(R,I,A); I!=10.
component(P,10,nitr):- reaction("aminoacid_C-3_transfer",_,_,P).
% all links from R are mapped to P except for oxyg 10
link(P,T,I,J):-reaction("aminoacid_C-3_transfer",R,AA,P); link(R,T,I,J); link(R,T,I,J); I!=10; J!=10.
% atoms and links from aminoacid are transferred at position 10 except nitr 5
component(P,N+1,carb):-reaction("aminoacid_C-3_transfer",_,_,P); nbatoms(R,N); production(P). 
component(P,N+2,carb):-reaction("aminoacid_C-3_transfer",_,_,P); nbatoms(R,N); production(P). 
component(P,N+3,oxyg):-reaction("aminoacid_C-3_transfer",_,_,P); nbatoms(R,N); production(P). 
component(P,N+4,carb):-reaction("aminoacid_C-3_transfer",_,_,P); component(AA,6,carb); component(AA,7,oxyg); nbatoms(R,N); production(P). 
component(P,N+5,oxyg):-reaction("aminoacid_C-3_transfer",_,_,P); component(AA,6,carb); component(AA,7,oxyg); nbatoms(R,N); production(P). 
component(P,N+5,oxyg):-reaction("aminoacid_C-3_transfer",_,_,P); component(AA,6,carb); component(AA,7,oxyg); nbatoms(R,N); production(P). 
component(P,N+4,oxyg):-reaction("aminoacid_C-3_transfer",_,"glycine",P); nbatoms(R,N); production(P). 
component(P,N+I-1,A):- reaction("aminoacid_C-3_transfer",R,AA,P); component(R,I,A); I>7; nbatoms(R,N);  production(P). 


#show input_metabolite/1.
#show output_metabolite/1.
#show reaction/3.
#show newreaction/3.
#show moleculeMZ/2.

%* Expected output

newreaction(c22_desaturation,"cholesterol", "22-dehydrocholesterol"). #### Already OK

# Hypothese 1 (minimize unkown steps)
newreaction(dehydration,"palythinol","palythine").

# Hypothese 2 (minimize unkown reaction types)
newreaction(dehydration,"asterina-330","hypothetic_MAA_1"). #### Already OK
newreaction(dehydration,"hypothetic_MAA_1","palythine").
hypothetic_MAA_1
mz(hypothetic_MAA_1)=270,2836  #### Find 270,2850 (issue with the number after the decimal for Hydrogen/Carbon/Nitrogen/Oxygen?)

*%