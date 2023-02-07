out = sim("blockScheme.slx");
t = out.tout;

subplot(311)
hold on
plot(t, out.StepSignal.Data(:, 1), "LineWidth", 2)
plot(t, out.Error.Data(:, 1), "LineWidth", 3)
plot(t, out.Plant.Data(:, 1), "LineWidth", 3)
plot(t, out.StepSignal1.Data(:, 1), "LineWidth", 2)
hold off
title("Algoritmus riadenia (PI, PD, PID)"), xlabel('time(s)'), ylabel('y'), legend("Step Signal", "Error", "Plant G-L", "Step Signal");
subplot(312)
hold on
plot(t, out.Error.Data(:, 1), "LineWidth", 3)
plot(t, out.StepSignal1.Data(:, 1), "LineWidth", 2)
xlabel('time(s)'), ylabel('y'), legend("Error", "Step Signal");
hold off
subplot(313)
hold on
plot(t, out.StepSignal.Data(:, 1), "LineWidth", 2)
plot(t, out.Plant.Data(:, 1), "LineWidth", 3)
xlabel('time(s)'), ylabel('y'), legend("Step Signal", "Plant G-L");
hold off