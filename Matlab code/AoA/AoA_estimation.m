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
snr = 20; % Signal-to-Noise Ratio [dB]
% Positions of antennas
antenna1 = [0.3 0 0];
antenna2 = [0 0 0];
antenna3 = [0 0.3 0];
% Distance between antennas
xAnt1Ant2 = norm(antenna1-antenna2); % From antenna 1 to 2
xAnt3Ant2 = norm(antenna1-antenna3); % From antenna 3 to 2

%% Signal generation
signal1 = Ac*cos(2*pi*freq_carrier*t + (8/8)* pi); % Signal at antenna 1
signal2 = Ac*cos(2*pi*freq_carrier*t); % Signal at antenna 2
signal3 = Ac*cos(2*pi*freq_carrier*t + (3/16)*pi); % Signal at antenna 3

signal = [signal1; signal2; signal3]; %Create signal matrix with signals as rows
signal_noised = awgn(signal, snr); %Add white gaussian noise to signal

%% Spectral analysis
n = 2^nextpow2(L_sample); %Find next power of two of sample length (used to pad signal with zeroes)
dim = 2; %Signal matrix has signals as rows
% pad each row of signal matrix with zeros so that the length of each row is the next higher power of 2 from the current length
signal_spectrum = fft(signal_noised, n, dim); % n-point fft of signal with added noise
signal_spectrum_shifted = fftshift(signal_spectrum); % shift fft spectrum to be centered around zero
f = (-n/2:n/2-1)/n*f_sample; % Frequency vector
signal_spectrum_shifted = signal_spectrum_shifted/n; % Divide by n-samples to compensate for n-point fft 
%Removing small magnitude values of signal
tol = 0.3; % Tolerance 
signal_spectrum_shifted(abs(signal_spectrum_shifted) < tol) = 0;
amplitude = abs(signal_spectrum_shifted); % Calculate the double-sided amplitude spectrum of signals
phase = angle(max(signal_spectrum_shifted,[],2)); % Calculate the phase of each signal at the signal element of largest magnitude

%% AoA estimation 
dAnt1Ant2 = lambda*(phase(1)-phase(2))/(2*pi);
elevation = asin(dAnt1Ant2/xAnt1Ant2);
elevation_deg = elevation*180/pi
dAnt3Ant2 = lambda*(phase(3)-phase(2))/(2*pi);
% azimuth = asin(dAnt1Ant3./xAnt3Ant2);
% azimuth_deg = azimuth*180/pi

%% Plotting
figure(1);
title("Time series of the data");
hold on;
plot(t, signal(1,:), 'DisplayName', 'Signal antenna 1');
plot(t, signal(2,:), 'DisplayName', 'Signal antenna 2');
plot(t, signal(3,:), 'DisplayName', 'Signal antenna 3');
legend()
grid on;

figure(2);
hold on;
title("Frequency series of the data");
plot(f, abs(signal_spectrum_shifted(1,:)), 'DisplayName', 'Amplitude antenna 1');
plot(f, abs(signal_spectrum_shifted(2,:)), 'DisplayName', 'Amplitude antenna 2');
plot(f, abs(signal_spectrum_shifted(3,:)), 'DisplayName', 'Amplitude antenna 3');
legend()
grid on;

figure(3);
title("Frequency series of the data");
hold on;
stem(f, angle(signal_spectrum_shifted(1,:))/pi, 'DisplayName', 'Phase antenna 1');
stem(f, angle(signal_spectrum_shifted(2,:))/pi, 'DisplayName', 'Phase antenna 2');
stem(f, angle(signal_spectrum_shifted(3,:))/pi, 'DisplayName', 'Phase antenna 3');
legend()
grid on;

% figure(3);
% title("Frequency series of the data");
% [X,Y,Z]=sph2cart(azimuth,elevation,100);
% plot3(X,Y,Z, 'o');
% legend()
% grid on;

figure(4)
title("Drone position");
polarscatter(elevation,60)
hold on
legend()
grid on;

% figure(4)
% title("Frequency series of the data");
% plot(fshift,abs(signal_noised_spectrum_shifted).^2/n, 'DisplayName', 'Signal antenna 1');
% legend()
% grid on;





