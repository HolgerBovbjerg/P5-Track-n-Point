clear

%% Setup the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 3);

% Specify range and delimiter
opts.DataLines = [9, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["Times", "ADCdata", "NewSample"];
opts.VariableTypes = ["double", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
FPGAsampler2 = readtable("C:\Users\holge\OneDrive\AAU - Elektronik og IT\5. semester\P5\P5-Track-n-Point\Tests\FPGA_test\FPGA_sampler2.csv", opts);


%% Clear temporary variables
clear opts

A = table2array(FPGAsampler2);
t = A(13:end,1);
data =A(13:end,2);
%data = cos(2*pi*500e3*t);
fs = 100e6;
L = length(data);
f = fs*(0:(L/2))/L;
adcres = 2^12;
R = 50;

U = (data-2^11)/sqrt(2);

P = U.^2/R;

spectrum = fft(data);
P2 = abs(spectrum);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

magnitude = P1/(L*adcres/2);

figure(1)
plot(t, data)
figure(2)
plot(f, magnitude)
xlim([0 1e6])
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f) [V]|')

figure(3)
plot(f, 10*log10((magnitude/sqrt(2)).^2/(R*1e-3)))
xlim([0 1e6])
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f) [dBm]|')