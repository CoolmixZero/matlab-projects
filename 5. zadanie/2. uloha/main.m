% Program na riesenie differencialnej rovnice 2. radu
% a2 * d2y/dt2 - a1*dy/dt - a0*y = exp(2t) s konstantnymi koeficientami a
% pravou stranou.
% Casovy interval [T0..T1] a pociatocne podmienky [P0 P1] su zadavane
% uzivatelom.
% T0 - zaciatok casoveho intervalu
% T1 - koniec casoveho intervalu
% P0 - pociatocna podmienka y(0)
% P1 - pociatocna podmienka dy(0)/dt
% a0 - koeficient pri funkcii
% a1 - koeficient pri prvej derivacii funkcie
% a2 - koeficient pri druhej derivacii funkcie
global a;

a = input("Zadaj koeficienty LDR: [a2 a1 a0] = [1 -4 -5]\n");
temp = input("Zadaj konecnu hodnotu casoveho intervalu pre riesenie LDR: 10\n");
% PP - pociatocne podmienky
PP = input("Zadaj pociatocne podmienky: [P0 P1] = [0 0]\n");
% inicializacia zaciatru cas. intervalu
T = linspace(0, temp);

% riesenie LDR pomocou funkcie ode45:
[t, y] = ode45('difrov', T, PP);
% analyticke riesenie
d = analyt(t);

% riesenie LDR pomocou simulink
out = sim("ulohaDva_simulink.slx");

% odhad chyby:
odhad_chyby = chyba(d, y);

% vykreslenie vyriesenych priebehov
% numericke riesenie:
subplot(3, 1, 1)
plot(t, y(:,1))
title('numericke riesenie y(t)'), xlabel('t'), ylabel('yn(t)')
% analyticke riesenie:
subplot(3, 1, 2)
plot(t, d, 'g')
title('analyticke riesenie y(t)'), xlabel('t'), ylabel('ya(t)')
% obe spolu a simulink
subplot(3, 1, 3)
hold on
plot(t, y(:,1), "--", "LineWidth", 3)  % numericke
plot(t, d, 'g')  % analyticke
plot(out.simulink.Time, out.simulink.Data, 'r');
hold off
title('spolu z simulink'), xlabel('t'), ylabel('yn(t), ya(t)');
legend("Numericke", "Analyticke", "Simulink")
return