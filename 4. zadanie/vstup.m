% PROGRAM NA ODSKUSANIE JEDNOTLIVYCH FUNKCII CONTROL TOOLBOXU PRE SYSTEM
% TELESO, PRUZINA, POTENCIOMETER, m=?, k=?, p=?

% 1. LDR v s-oblasti (v polynoilalnom tvare, v trave poly/nuly)
% a v stavovom priestore pomocou matic A, B, C, D.

function [sys] = vstup()

global sys A B C D k b F m num den;

options = menu("VSTUPY", ...
    "V polynoilalnom tvare", "Pomocou Polov, Nul a Zosilnenia", "Pomocou matic");

switch options
    case 1
        num = F;
        den = [m b k];
        sys = tf(num, den);
        disp(sys);

    case 2
        z = input("Zadajte nuly ... z=");
        p = input("Zadajte poly ... p=");
        k = input("Zadajte zosilnenie ... k=");
        sys = zpk(z, p, k);
        disp(sys);

    case 3
        A = input("Zadajte maticu A=");
        B = input("Zadajte maticu B=");
        C = input("Zadajte maticu C=");
        D = input("Zadajte maticu D=");
        sys = ss(A, B, C, D);
        disp(A)
        disp(B)
        disp(C)
        disp(D)

end
hlavny

