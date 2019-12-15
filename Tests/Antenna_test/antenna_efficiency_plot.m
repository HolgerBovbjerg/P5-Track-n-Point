clear 

%% Setup the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 3);

% Specify range and delimiter
opts.DataLines = [3, Inf];
opts.Delimiter = "\t";

% Specify column names and types
opts.VariableNames = ["Frequency", "Efficiency", "EfficiencydB"];
opts.VariableTypes = ["double", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
Ant1Eff = readtable("C:\Users\holge\OneDrive\AAU - Elektronik og IT\5. semester\P5\P5-Track-n-Point\Tests\Antenna_test\Ant1Eff.txt", opts);


%% Clear temporary variables
clear opts

A = table2array(Ant1Eff)

plot(A(:,1), A(:,3))
grid on
title('Efficiency of antenna in dB')
xlabel('Frequency [Hz]')
ylabel('Efficiency [dB]')