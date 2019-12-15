clear;
close all
%M = csvread(filename,R1,C1,[R1 C1 R2 C2]) reads only the range bounded by row offsets R1 and R2 and column offsets C1 and C2. Another way to define the range is to use spreadsheet notation, such as 'A1..B7' instead of [0 0 6 1].
M=csvread('FPGA_sampler.csv',8,1,[8,1,2^12+7,12]);
%type ADC_mixer_output_test.csv
%opts.Sheet = 'ADC_mixer_output_test';
%opts.SelectedVariableNames = [5:13]; 
%opts.DataRange = '8:28';
R = 50;
Fs = 100e6;            % Sampling frequency                    
T = 1/Fs;             % Sampling period  
adcres = 2/(2^12);
L = 2^12;             % Length of signal (same as number of rows in csv file)
t = (0:L-1)*T;        % Time vector
t = t.'
%M = readmatrix('ADC_mixer_output_test_2.csv')
d = bi2de(M,2,'left-msb')
M = d;
u = adcres*M;
pow = (u.^2)/R;
powdbm = 10*log10(pow./1e-3);
figure(1)
plot(t,u)
title('Sampled Signal','FontSize',16')
xlabel('t (milliseconds)','FontSize',16')
ylabel('Volt','FontSize',16')
Y = fft(u);
% Y = Y.'
P2 = abs(Y)/L;
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(L/2))/L;

figure(2)
plot(f,P1) 
title('Single-Sided Amplitude Spectrum of X(t)','FontSize',16')
xlabel('f (Hz)','FontSize',16')
xlim([0 5e6])
ylabel('Voltage (V)','FontSize',16')

S=(fftshift(fft(u,L))/(L));

% power spectrum
Sp=10 * log10(((abs(P1).^2)/R)/1e-3);
figure(3)
clf
plot(f,Sp)
xlabel('Frequency','FontSize',16')
xlim([0 5e6])
ylabel('','FontSize',16')
%set(gca, 'YScale', 'log')
title('Amplitude spectrum of the ADC output','FontSize',16')

windowSize = 10; 
b = (1/windowSize)*ones(1,windowSize);
a = 1;
y = filter(b,a,M);
figure(4)
plot(t,M)
hold on
plot(t,y)
legend('Input Data','Filtered Data','FontSize',16')


%opts = detectImportOptions('ADC_mixer_output_test.csv');
%preview('ADC_mixer_output_test.csv',opts)
%Array1=csvread('ADC_mixer_output.csv', 2, 0);
