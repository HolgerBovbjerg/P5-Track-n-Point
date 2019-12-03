clear 

%% Sampling parameters
f_sample = 3e9; % Sampling frequency [Hz} 
T_sample = 1/f_sample; % Sampling period [s]
L_sample = 1500; % Sample length
t = (0:L_sample-1)*T_sample; % Time vector

%% Signal parameters
freq_carrier = 964e6; % Carrier frequency [Hz]
Ac = 1; % Amplitude of the carrier
c = physconst('lightspeed'); % Speed of light [m/s]
lambda = c/freq_carrier; % Wavelength of signal [m]

%% Antenna parameters
snr = 45; % Signal-to-Noise Ratio [dB]
% Positions of antennas
antenna1 = [lambda/2 0 0];
antenna2 = [0 0 0];
antenna3 = [0 lambda/2 0];
% Distance between antennas
xAnt1Ant2 = norm(antenna2-antenna1); % From antenna 1 to 2
xAnt3Ant2 = norm(antenna2-antenna3); % From antenna 3 to 2
a = -10;
%% Signal generation
signal1 = Ac*cos(2*pi*freq_carrier*t + (a/20)*pi); % Signal at antenna 1
signal2 = Ac*cos(2*pi*freq_carrier*t + (0)* pi); % Signal at antenna 2
signal3 = Ac*cos(2*pi*freq_carrier*t + (a/20)*pi); % Signal at antenna 3

signal1_noised = awgn(signal1, snr, 'measured'); %Add white gaussian noise to signal
signal2_noised = awgn(signal2, snr, 'measured'); %Add white gaussian noise to signal
signal3_noised = awgn(signal3, snr, 'measured'); %Add white gaussian noise to signal

%% Spectral analysis
signal1_spectrum = fft(signal1_noised); % n-point fft of signal with added noise
signal1_spectrum = fftshift(signal1_spectrum);
signal2_spectrum = fft(signal2_noised); % n-point fft of signal with added noise
signal2_spectrum = fftshift(signal2_spectrum);
signal3_spectrum = fft(signal3_noised); % n-point fft of signal with added noise
signal3_spectrum = fftshift(signal3_spectrum);
f = (-L_sample/2:L_sample/2-1)/L_sample*f_sample;
%Removing small magnitude values of signal
tol = 1e-1; % Tolerance 
signal1_spectrum(abs(signal1_spectrum/L_sample) < tol) = 0;
signal2_spectrum(abs(signal2_spectrum/L_sample) < tol) = 0;
signal3_spectrum(abs(signal3_spectrum/L_sample) < tol) = 0;

amplitude1 = abs(signal1_spectrum/L_sample); % Calculate the double-sided amplitude spectrum of signals
amplitude2 = abs(signal2_spectrum/L_sample); % Calculate the double-sided amplitude spectrum of signals
amplitude3 = abs(signal3_spectrum/L_sample); % Calculate the double-sided amplitude spectrum of signals

phase1 = angle(max(signal1_spectrum(L_sample/2+1:end))); % Calculate the phase of each signal at the signal element of largest magnitude
phase2 = angle(max(signal2_spectrum(L_sample/2+1:end))); % Calculate the phase of each signal at the signal element of largest magnitude
phase3 = angle(max(signal3_spectrum(L_sample/2+1:end))); % Calculate the phase of each signal at the signal element of largest magnitude

%% AoA estimation 
dAnt1Ant2 = lambda*(phase2-phase1)/(2*pi);
elevation = asin(dAnt1Ant2/xAnt1Ant2);
elevation_deg = elevation*180/pi
dAnt3Ant2 = lambda*(phase2-phase3)/(2*pi);
azimuth = asin(dAnt3Ant2/xAnt3Ant2);
azimuth_deg = azimuth*180/pi

%% Plotting
figure(1);
title("Time series of the data");
hold on;
plot(t, signal1, 'DisplayName', 'Signal antenna 1');
plot(t, signal2, 'DisplayName', 'Signal antenna 2');
plot(t, signal3, 'DisplayName', 'Signal antenna 3');
legend()
grid on;

figure(2);
hold on;
xlabel 'Frequency (Hz)'
ylabel '|y|'
title("Frequency series of the data");
plot(f(L_sample/2+1:end), amplitude1(L_sample/2+1:end), 'DisplayName', 'Amplitude antenna 1');
plot(f(L_sample/2+1:end), amplitude2(L_sample/2+1:end), 'DisplayName', 'Amplitude antenna 2');
plot(f(L_sample/2+1:end), amplitude3(L_sample/2+1:end), 'DisplayName', 'Amplitude antenna 3');
legend()
grid on;

figure(3);
title("Frequency series of the data");
hold on;
xlabel 'Frequency (Hz)'
ylabel 'Phase / \pi'
stem(f(L_sample/2+1:end), angle(signal1_spectrum(L_sample/2+1:end))/pi, 'DisplayName', 'Phase antenna 1');
stem(f(L_sample/2+1:end), angle(signal2_spectrum(L_sample/2+1:end))/pi, 'DisplayName', 'Phase antenna 2');
stem(f(L_sample/2+1:end), angle(signal3_spectrum(L_sample/2+1:end))/pi, 'DisplayName', 'Phase antenna 3');
legend()
grid on;

figure(4)
title("Drone elevation");
polarscatter(elevation,60)
hold on
legend()
grid on;

figure(5)
title("Drone azimuth");
polarscatter(azimuth,60)
hold on
legend()
grid on;