clear
%% Setup the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 3);

% Specify range and delimiter
opts.DataLines = [9, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["Times", "NewSample", "Bus"];
opts.VariableTypes = ["double", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
ReceiverADCfull = readtable("Receiver_ADC_38_1_100MS.csv", opts);


%% Clear temporary variables
clear opts


A = table2array(ReceiverADCfull);
t = A(1:end,1);
data =A(1:end,3);
%data = cos(2*pi*500e3*t);
fs = 100e6;
L = length(data);
f = (fs/L)*(0:(L/2));
adcres = 2/2^12;
R = 50;

U = (data - 2^11)*adcres; % Remove DC component

spectrum = fft(U);
P2 = abs(spectrum)/L;
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

%magnitude = (P1*adcres)/L;

figure(1)
plot(t, U)

figure(2)
plot(f, P1)
xlim([0 5e6])
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f) [V]|')

figure(3)
plot(f, 10*log10((P1/sqrt(2)).^2/(R*1e-3)))
xlim([0 5e6])
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f) [dBm]|')