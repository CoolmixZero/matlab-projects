% Odozva na ľubovoľný signál
function [] = odozva()
global sys b k F m;;

type = input("Zadaj typ signalu napr. 'sine', 'pulse', 'square': ");
Tau = input("zadaj periodu vzorkovania (5): ");
Tf = input("zadaj celkovu dobu simulacie (30): ");
Ts = input("zadaj vzorkovaci cas Ts (0.1): ");

[u, t] = gensig(type, Tau, Tf, Ts);
lsim(sys, u, t);
grid;
title("odozva na lubovolny vstupny signal")
xlabel("cas(t)"), ylabel("y(t)");

hlavny
return