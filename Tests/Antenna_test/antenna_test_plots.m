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