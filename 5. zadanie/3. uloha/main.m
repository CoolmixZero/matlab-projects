T = [0 10];
PP = [1 0];

[t, y] = ode45('NDR', T, PP);
[t1, y1] = rk(@NDR, T, PP);
global a;
disp(a)
out = sim("ulohaTri_simulink.slx");

subplot(411)
plot(t, y(:,1), 'linewidth',3)
title("nelinearna differencialna rovnica y^2*y'' - 2*z*y*y' + 2y^2 - z^2 = 0"), xlabel('time'), ylabel('y(t)'), legend("ODE45");
subplot(412)
plot(t1, y1(:,1), 'r', 'linewidth',3)
xlabel('time'), ylabel('y(t)'), legend("R-K 4. radu");
subplot(413)
plot(out.simout.Time, out.simout.Data, 'g', 'linewidth',3);
xlabel('time'), ylabel('y(t)'), legend("Simulink");
subplot(414)
hold on
plot(t, y(:,1), 'linewidth',5)
plot(t1, y1(:,1), '--r', 'linewidth',5)
plot(out.simout.Time, out.simout.Data, '.g', 'linewidth',8);
xlabel('time'), ylabel('y(t)'), legend("ODE45", "R-K 4. radu","Simulink");