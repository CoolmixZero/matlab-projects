function I = MSP(U, R)
% Metóda výpočtu elektrických obvodov, 
% pri ktorej sa prúdy v obvodoch 
% vytvorených nejakým podmieneným delením elektrického obvodu považujú za neznáme.
% I => vektor vetvovych prudov
% U => vektor napaty zdrojov
% R => vektor odporov

% Zostavenie rovnic MSP v maticovom tvare:
A = [R(1)+R(2), -R(2), 0;
    -R(2), R(2)+R(3)+R(4), -R(3);
    0, -R(3), R(3) + R(5)];
B = [-U(1);0;-U(2)];

% Vypocet sluckovych prudov: A * Is = b
Is = A\B;
I = [-Is(1);Is(1)-Is(2);Is(2)-Is(3);Is(2);-Is(3)];
end