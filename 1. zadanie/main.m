% Program na vypocet prudov vo vetvach obvodu podla prilozenej schemy.
% Vypocet sa uskutocnuje metodou sluckovych prudov a metodou uzlovych
% napati na zaklade uzivatelom zadanych hodnot napat. zdrojov a odporov.
U = input('Hodnoty nap. zdrojov (V) v tvare "[U1 U2]" [60 10]\n');
R = input('Hodnoty odporov (Om) v tvare "[R1 R2 R3 R4 R5]" [3 10 15 10 2]\n');
fprintf('\n\n');
% Metoda sluckovych prudov
I1 = MSP(U, R);

name_I = ["I1"; "I2"; "I3"; "I4"; "I5"];
name_U = ["U1"; "U2"; "U3"];
disp(table(name_I, I1));

skuska(I1);

fprintf('\n\n');
% Metoda uzlovych napati
I = MUN(U, R);

disp(table(name_I, I));

skuska(I);

I_s = [I(1) + I(2) + I(4); I(1) + I(2) + I(4) - I(5) + I(5); -I(4)+I(3)-I(5)];
disp(table(name_U, I_s));