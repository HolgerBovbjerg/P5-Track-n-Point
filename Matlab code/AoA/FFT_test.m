clear 
clear 
% Sampling parameters
f_sample = 10e6; % Sampling frequency [Hz} 
N = 800; % Sample length

% Antenna parameters
snr = 45; % Signal-to-Noise Ratio [dB]
% Signal generation
signal1 = cos(2*pi*1e6*(0:N-1)/f_sample); % Signal at antenna 1
signal1_noised = awgn(signal1, snr, 'measured'); %Add white gaussian noise to signal

% Spectral analysis
signal1_spectrum = fft(signal1_noised); % n-point fft of signal with added noise
signal1_spectrum = fftshift(signal1_spectrum);
f = (-N/2:N/2-1)/N*f_sample;
stem(f, abs(signal1_spectrum))

ax = gca;
xlabel('Frequency (Hz)')
title('DFT Magnitude')
