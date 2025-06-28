clc;
clear;

% Rate constants 1/min
k1 = 0.4;  
k2 = 0.2;  

% Initial concentrations [CA0, CB0, CC0]
C0 = [5, 0, 0];
tspan = [0 50]; % minutes

% ODE system
reactionODE = @(t, C) [-k1*C(1); 
                        k1*C(1) - k2*C(2); 
                        k2*C(2)];

% Solve ODEs
[t, C] = ode45(reactionODE, tspan, C0);

% Extract concentrations
CA = C(:,1);
CB = C(:,2);
CC = C(:,3);

% Find maximum of CB and corresponding time
[max_CB, idx_max_CB] = max(CB);
t_max_CB = t(idx_max_CB);

% Calculate volume when CB is max
flow_rate = 50; % L/min
V_at_max_CB = flow_rate * t_max_CB;

% Plot
figure('Name','Batch Reactor - Concentration Profiles','NumberTitle','off');
plot(t, CA, 'b', t, CB, 'g', t, CC, 'c', 'LineWidth', 2);
xlabel('Time (min)');
ylabel('Concentration (mol/L)');
title('Concentration Profiles in Batch Reactor');
legend('C_A', 'C_B', 'C_C');
grid on;

% Output
fprintf('Maximum CB: %.3f mol/L at t = %.2f min\n', max_CB, t_max_CB);
fprintf('Volume at max CB: %.2f L\n', V_at_max_CB);