Rs = 4.85;     % ? Résistance du stator
Rr = 3.805;    %? Résistance du rotor
Ls = 0.274; %H Inductance du stator
Lr = 0.274; %H Inductance du rotor
M = 0.258;  %H Inductance Mutuelle
PW = 1.5;    %KW puissance électrique
%PARAMETRES MECANIQUES
J = 0.031;    %Kg.m2 Moment d’inertie
f = 0.000114;       %SI Coefficient de frottement
%A.3 PARAMETRES ELECTROMAGNETIQUES
Cem= 10;      %N.m Couple nominal
p = 2;       %Nombre de paire de pôle.
segma=1-M*M/(Ls*Lr);% coefficient de dispersion
Ts=Ls/Rs;           % constante de temps statorique
Tr=Lr/Rr;           % constante de temps rotorique
Ak=[0 0 -Rs 0; 0 0 0 -Rs; 1/(Tr*Ls*segma) 0 -(1/Ts+1/Tr)/segma 0;...
    0 1/(Tr*Ls*segma) 0 -(1/Ts+1/Tr)/segma ];
Ah=[0 0 0 0;0 0 0 0;0 1/(Ls*segma) 0 -1;-1/(Ls*segma) 0 1 0];
B=[1 0 1/(Ls*segma) 0;0 1 0 1/(Ls*segma)]'