clear

%% Setup the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 8);

% Specify range and delimiter
opts.DataLines = [1, Inf];
opts.Delimiter = "\t";

% Specify column names and types
opts.VariableNames = ["Frequency", "Phi", "Theta", "EPhiRealpart", "EPhiImaginarypart", "EThetaRealpart", "EThetaImaginarypart", "ETotaldB"];
opts.VariableTypes = ["double", "double", "double", "double", "double", "double", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
Ant1 = readtable("C:\Users\holge\OneDrive\AAU - Elektronik og IT\5. semester\P5\P5-Track-n-Point\Tests\Antenna_test\Ant1.txt", opts);


%% Clear temporary variables
clear opts

data = Ant1((2+4*(7261-1)):(2+5*(7261-2)),[1 2 3 8]);
phi_step = 0.05235987756;
theta_step = 0.0524;
A = table2array(data);
phi = A(:,2).*(180/pi);
theta = A(:,3).*(180/pi);
MagE = A(:, 4);


figure(1)
patternCustom(MagE,theta, phi);

figure(2)
patternCustom(MagE,theta,phi,'CoordinateSystem','polar','Slice', 'phi','SliceValue',[0 45.000000000146200 90.000000000292400]);%  1.769999999982832e+02]);

figure(3)
polarpattern(theta(1:121), MagE(1:121))
title('Radiation pattern \phi = 0 \degree')



