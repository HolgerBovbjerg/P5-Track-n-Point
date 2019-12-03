clear;

Zc = 50; %Characteristic impedance of source
f_0 = 868e6; % Desired centerfrequency
h = 3e-3; % Thickness of antenna
epsilon_r = 2.2; % Relative dielectric constant of material
c = physconst('lightspeed'); % Speed of light

% Calculate wavelength
lambda_0 = c/f_0; 
% Determine width of patch
W = c/(2*f_0) * sqrt(2/(epsilon_r + 1)); 
% Calculate effective dielectric constant
epsilon_reff = (epsilon_r+1)/2 + (epsilon_r-1)/2 * 1/sqrt(1+12*h/W); 
% Extra electrical length of patch
deltaL = h*0.412 * (epsilon_reff + 0.3)*( W/h + 0.264)/( (epsilon_reff - 0.258) * (W/h + 0.8)); 
% Physical length of patch to obtain electrical length of lambda/2
L = c/(2*f_0*sqrt(epsilon_reff)) - 2*deltaL; 
% Input resistance of antenna with y0=0
R_in = 90 * epsilon_reff^2/(epsilon_reff - 1) * (L/W); 
%Patch microstrip inset feedpoint
y_0 = acos(sqrt(Zc/R_in))*L/pi; 
% Find width of microstrip feed such that it matches source
syms x;
W_0 = double(solve(Zc == 120*pi/( sqrt(epsilon_reff) * ( (x/h) + 1.393 + 0.667 * log((x/h) + 1.444) ) ), x)); 

% Create microstrip antenna
insetpatch = patchMicrostripInsetfed('Length', L, 'Width', W);
insetpatch.Height = h;
insetpatch.Substrate = dielectric('FR4');
insetpatch.StripLineWidth = W_0;
insetpatch.NotchLength = y_0;
insetpatch.NotchWidth = W_0*1.2;
insetpatch.GroundPlaneWidth = W*2;
insetpatch.GroundPlaneLength = L*2;
%insetPatch.FeedOffset = [-0.07 0];
%insetpatch.Load = lumpedElement('Impedance',50);

% Plot pattern
p = PatternPlotOptions;
p.Transparency = 0.7;
% pattern(insetpatch, f_0, 'patternOptions', p)


% impedance(insetpatch, f_0-f_0/10:2*f_0/10:f_0+f_0/10)
% S = sparameters(insetpatch,2300e6:10e6:2500e6,72);
% rfplot(S)
% vswr(d,2300e6:10e6:2500e6,72)