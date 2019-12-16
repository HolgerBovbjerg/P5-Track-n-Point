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
f = [0.9e6 1e6 1.1e6];
freq_indices = round(f/f_sample*N) + 1; 
signal1_spectrum = goertzel(signal1_noised, freq_indices); % n-point fft of signal with added noise

% stem(f,abs(signal1_spectrum))
% 
% ax = gca;
% ax.XTick = f;
% xlabel('Frequency (Hz)')
% title('DFT Magnitude')
