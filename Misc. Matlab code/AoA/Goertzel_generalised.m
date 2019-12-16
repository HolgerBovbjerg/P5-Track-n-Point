clear

f_sample = 10e6; % Sampling frequency [Hz} 
N = 200;

% Antenna parameters
snr = 45; % Signal-to-Noise Ratio [dB]
freq_carrier = 964e6; % Carrier frequency [Hz]
Ac = 1; % Amplitude of the carrier
c = physconst('lightspeed'); % Speed of light [m/s]
lambda = c/freq_carrier; % Wavelength of signal [m]
% Signal generation
A = 1;
f_signal = 0.5e6;
% for b=-9:9
% phase_shift = (b/10)*pi;
% for i = 0:20
phase_shift = (5/10)*pi;
signal1 = A*cos((2*pi*f_signal*(0:N-1)/f_sample) + phase_shift) + 2*A*cos((2*pi*(f_signal/2)*(0:N-1)/f_sample) + (1/2)*phase_shift); % Signal at antenna 1
signal1_noised = awgn(signal1, snr, 'measured'); %Add white gaussian noise to signal
f_norm = f_signal/f_sample;
omega_0 = (2*pi*f_sample/N); % fundamental frequency (frequency per sample)
omega_signal = 2*pi*f_signal; % signal frequency in rad/s
k_sig = omega_signal/omega_0; % k equivalent to signal frequency
magnitude_plot = zeros(1, N/2);
phase_plot = zeros(1, N/2);
for k = 0:N/2-1

%% Goertzel constants
omega = 2*pi * k/N; % Frequency of interest
%omega = 2 * pi * f_norm;
coeff = 2 * cos(omega);
cos_coeff = cos(omega);
sin_coeff = sin(omega);
coeff2 = exp(-1i*omega);
coeff3 = exp(-1i*omega*N);
%%State initialisation
va_prev = 0;
va_prev2 = 0;
x = 0;
%% DFT calculation
for n = 1:N
  va = signal1_noised(n) + coeff * va_prev - va_prev2;
  x = x+1;
  va_prev2 = va_prev;
  va_prev = va;
end
% Final calculations
va = coeff * va_prev - va_prev2;
X2 = coeff3*(va - va_prev*coeff2);
Re = coeff3*(va - va_prev*cos_coeff);
Im = coeff3*(va_prev*sin_coeff);
X = Re + 1i*Im;

% Re = va_prev - va_prev2*cos_coeff;
% Im = va_prev2*sin_coeff;
% X = Re + 1i*Im;

%% 

phase = angle(X);
phase_deg = angle(X).*180/pi;
magnitude = abs(X).*2./N;
magnitude_plot(k+1) = magnitude;
phase_plot(k+1) = phase;
end

figure(1)
stem((0:N/2-1), magnitude_plot)

% filter out zero phase values
for n=1:N/2
    if(magnitude_plot(n) < 0.1)
        phase_plot(n) = 0;
    end
end
figure(2)
stem((0:N/2-1), phase_plot/pi)

figure(3)
scatter(phase_shift*ones(1,N/2), phase_plot)

dAnt1Ant2 = lambda*(-phase_plot/(2*pi));
elevation = asin(dAnt1Ant2/(0.5*lambda));

figure(4)
scatter(phase_shift*ones(1,N/2), elevation*180/pi)
hold on
