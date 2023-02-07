function I = MUN(U, R)
% Metóda analýzy elektrických obvodov. 
% Táto metóda je založená na formulácii rovníc podľa prvého Kirchhoffovho zákona. 
% V tomto prípade sa potenciál jedného z uzlov reťazca rovná nule, 
% čo umožňuje znížiť počet rovníc na n-1.
% I => vektor vetvovych prudov
% U => vektor napaty zdrojov
% R => vektor odporov

A = [1/R(1)+1/R(2)+1/R(4), -1/R(4);
    -1/R(4), 1/R(3)+1/R(4)+1/R(5)];
B = [-U(1)*1/R(1);
    U(2)*1/R(5)];
Uu = A\B;
I = [(U(1)+Uu(1))/R(1);Uu(1)/R(2);Uu(2)/R(3);(Uu(1) - Uu(2))/R(4);(U(2)-Uu(2))/R(5)];
end