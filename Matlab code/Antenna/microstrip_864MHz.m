clear

%% Known parameters
Zc = 50; %Characteristic impedance of source
f_0 = 864e6; % Desired centerfrequency
h = 1.5e-3; % Thickness of antenna material
epsilon_r = 4.3; % Relative dielectric constant of material
c = physconst('lightspeed'); % Speed of light
lambda = c/f_0;
%% Determine width of patch
W = c/(2*f_0) * sqrt(2/(epsilon_r + 1)); 
%% Calculate effective dielectric constant
epsilon_reff = (epsilon_r+1)/2 + (epsilon_r-1)/2 * 1/sqrt(1+12*h/W); 
%% Determine length of patch
% Extra electrical length of patch
deltaL = h*0.412 * (epsilon_reff + 0.3)*( W/h + 0.264)/( (epsilon_reff - 0.258) * (W/h + 0.8)); 
% Physical length of patch to obtain electrical length of lambda/2
L = c/(2*f_0*sqrt(epsilon_reff)) - 2*deltaL; 
%% Determine inset feedpoint
% Input resistance of antenna with y0=0
R_in = 90 * epsilon_reff^2/(epsilon_reff - 1) * (L/W); 
%Patch microstrip inset feedpoint
y_0 = acos(sqrt(Zc/R_in))*L/pi;
%% Inset gap
g = (((c)*(4.65e-12))/(sqrt(2*epsilon_reff)*(f_0*(1e-9))));
%% Determine width of microstrip feed such that it matches source
syms x;
W_0 = double(solve(Zc == 120*pi/( sqrt(epsilon_reff) * ( (x/h) + 1.393 + 0.667 * log((x/h) + 1.444) ) ), x)); 
%% Outputs
disp('Rectangular Patch');
disp(['Patch Width:',num2str(W*(1e3)), ' mm']);
disp(['Patch Length:',num2str(L*(1e3)), ' mm']);
disp(['Inset:',num2str(y_0*(1e3)), ' mm']);
disp(['Inset gap:',num2str(g*(1e3)), ' mm']);
disp(['Feed Width:',num2str(W_0*(1e3)), ' mm']);