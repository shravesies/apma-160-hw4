% This code depends o military_budget.m which is not complete!

% create "struct" (structure) which contains all the parameter values
params.a = 0.7;
params.b = 0.85;
params.K = 1.0;
params.L = 0.4;
params.g = 0.1;
params.h = 0.2;

% initial condition [country_1_budget; country_2_budget]
% notice the semicolon instead of a comma
x0 = [0.4; 0.25];
num_steps = 50;

% when complete, this next line should execute without error
out1 = military_budget(x0, num_steps, params);


params2 = params; % make a copy of the parameters

% change the value of one of the parameters in the new struct ("h" in this case)
params2.a = 0.15;
params2.b = 0.3;
params2.K = 1.0;
params2.L = 0.4;
params2.g = 0.1;
params2.h = 0.6;  

out2 = military_budget(x0, num_steps, params2);

% plot if a*b > K * L - stable budget
figure;
hold on;
plot(0:num_steps, out1(1, :), 'r-')
plot(0:num_steps, out1(2, :), 'b-')
xlabel('Time Step');
ylabel('Military Budget');
legend('Country 1', 'Country 2');
title('Stabilized Budget')

% plot if a*b < K * L - arms race
figure;
hold on;
plot(0:num_steps, out2(1, :), 'r-')
plot(0:num_steps, out2(2, :), 'b-')
xlabel('Time Step');
ylabel('Military Budget');
legend('Country 1', 'Country 2');
title('Arms Race')
