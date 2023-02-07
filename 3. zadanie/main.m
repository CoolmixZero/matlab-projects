[t, y] = ode45('NDR', [0 20], [1 0]);
[t1, y1] = rk(@NDR, [0 20], [1 0]);

subplot(311)
plot(t, y(:,1), 'linewidth',3)
title("nelinearna differencialna rovnica y^2y'' - 2yy'^2 + y'^3 = 0", "FontSize", 14), xlabel('t'), ylabel('y(t)'), legend("ODE45");
subplot(312)
plot(t1, y1(:,1), 'linewidth',3)
xlabel('t'), ylabel('y(t)'), legend("R-K 4. radu");
subplot(313)
plot(t, y(:,1), '--', t1, y1(:,1), '.', 'linewidth',3)
xlabel('t'), ylabel('y(t)'), legend("ODE45", "R-K 4. radu");