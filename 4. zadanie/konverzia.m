% 2. KONVERZIA MODELU ZO STAVOVEHO PRIESTORU DO TVARU PRECHODOVEJ FUNKCIE A
% NAOPAK
function [] = konverzia()

global sys A B C D z p k num den F m;;

options = menu('Konverzia', ...
    'ss2tf', 'ss2zp', 'tf2ss', 'tf2zp', 'zp2tf', 'zp2ss');

switch options
    case 1
        [num, den] = ss2tf(A, B, C, D, 1);
    case 2
        [z, p, k] = ss2zp(A, B, C, D);
    case 3
        [A, B, C, D] = tf2ss(num, den);
    case 4
        [z, p, k] = tf2zp(num, den);
    case 5
        [num, den] = zp2tf(z, p, k);
    case 6
        [A, B, C, D] = zp2ss(z, p, k);
end
hlavny