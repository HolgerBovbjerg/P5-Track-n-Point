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
antenna1 = [0.3 0 0];
antenna2 = [0 0 0];
antenna3 = [0 0.3 0];
% Distance between antennas
xAnt1Ant2 = norm(antenna1-antenna2); % From antenna 1 to 2
xAnt3Ant2 = norm(antenna1-antenna3); % From antenna 3 to 2

%% Signal generation
signal1 = Ac*cos(2*pi*freq_carrier*t - (10/10)*pi); % Signal at antenna 1
signal2 = Ac*cos(2*pi*freq_carrier*t + (0)* pi); % Signal at antenna 2
signal3 = Ac*cos(2*pi*freq_carrier*t + (0/8)*pi); % Signal at antenna 3

signal1_noised = awgn(signal1, snr); %Add white gaussian noise to signal
signal2_noised = awgn(signal2, snr); %Add white gaussian noise to signal
signal3_noised = awgn(signal3, snr); %Add white gaussian noise to signal

%% Spectral analysis
n = 2^nextpow2(L_sample); %Find next power of two of sample length (used to pad signal with zeroes)
dim = 2; %Signal matrix has signals as rows
% pad each row of signal matrix with zeros so that the length of each row is the next higher power of 2 from the current length
signal1_spectrum = fft(signal1_noised, n, dim); % n-point fft of signal with added noise
signal1_spectrum = signal1_spectrum( : , 1:(n/2)+1 );
signal1_spectrum( : , 1:(n/2)+1 ) = 2*signal1_spectrum( : , 1:(n/2)+1 );
signal2_spectrum = fft(signal2_noised, n, dim); % n-point fft of signal with added noise
signal2_spectrum = signal2_spectrum( : , 1:(n/2)+1 );
signal2_spectrum( : , 1:(n/2)+1 ) = 2*signal2_spectrum( : , 1:(n/2)+1 );
signal3_spectrum = fft(signal3_noised, n, dim); % n-point fft of signal with added noise
signal3_spectrum = signal3_spectrum( : , 1:(n/2)+1 );
signal3_spectrum( : , 1:(n/2)+1 ) = 2*signal3_spectrum( : , 1:(n/2)+1 );

f = 0:(f_sample/n):(f_sample/2-f_sample/n); % Frequency vector

%Removing small magnitude values of signal
tol = 0.3; % Tolerance 
signal1_spectrum(abs(signal1_spectrum/n) < tol) = 0;
signal2_spectrum(abs(signal2_spectrum/n) < tol) = 0;
signal3_spectrum(abs(signal3_spectrum/n) < tol) = 0;

amplitude1 = abs(signal1_spectrum/n); % Calculate the double-sided amplitude spectrum of signals
amplitude2 = abs(signal2_spectrum/n); % Calculate the double-sided amplitude spectrum of signals
amplitude3 = abs(signal3_spectrum/n); % Calculate the double-sided amplitude spectrum of signals

phase1 = atan2(real(max(signal1_spectrum)), imag(max(signal1_spectrum))); % Calculate the phase of each signal at the signal element of largest magnitude
phase2 = atan2(real(max(signal2_spectrum)), imag(max(signal2_spectrum))); % Calculate the phase of each signal at the signal element of largest magnitude
phase3 = atan2(real(max(signal3_spectrum)), imag(max(signal3_spectrum))); % Calculate the phase of each signal at the signal element of largest magnitude

%% AoA estimation 
dAnt1Ant2 = lambda*(phase2-phase1)/(2*pi);
elevation = asin(dAnt1Ant2/xAnt1Ant2);
elevation_deg = elevation*180/pi
dAnt3Ant2 = lambda*(phase2-phase3)/(2*pi);
azimuth = asin(dAnt3Ant2/xAnt3Ant2);
azimuth_deg = azimuth*180/pi

%% Plotting
% figure(1);
% title("Time series of the data");
% hold on;
% plot(t, signal1, 'DisplayName', 'Signal antenna 1');
% plot(t, signal2, 'DisplayName', 'Signal antenna 2');
% plot(t, signal3, 'DisplayName', 'Signal antenna 3');
% legend()
% grid on;
% 
% figure(2);
% hold on;
% title("Frequency series of the data");
% plot(f, amplitude1(1:n/2), 'DisplayName', 'Amplitude antenna 1');
% plot(f, amplitude2(1:n/2), 'DisplayName', 'Amplitude antenna 2');
% plot(f, amplitude3(1:n/2), 'DisplayName', 'Amplitude antenna 3');
% legend()
% grid on;
% 
% figure(3);
% title("Frequency series of the data");
% hold on;
% stem(f, angle(signal1_spectrum(1:n/2))/pi, 'DisplayName', 'Phase antenna 1');
% stem(f, angle(signal2_spectrum(1:n/2))/pi, 'DisplayName', 'Phase antenna 2');
% stem(f, angle(signal3_spectrum(1:n/2))/pi, 'DisplayName', 'Phase antenna 3');
% legend()
% grid on;

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