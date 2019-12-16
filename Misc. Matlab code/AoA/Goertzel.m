clear

f_sample = 10e6; % Sampling frequency [Hz} 
N = 60;

% Antenna parameters
snr = 45; % Signal-to-Noise Ratio [dB]
freq_carrier = 964e6; % Carrier frequency [Hz]
Ac = 1; % Amplitude of the carrier
c = physconst('lightspeed'); % Speed of light [m/s]
lambda = c/freq_carrier; % Wavelength of signal [m]
% Signal generation
A = 1;
f_signal = 0.5e6;
for b=-9:9
phase_shift = (b/10)*pi;
for i = 0:20
signal1 = A*cos((2*pi*f_signal*(0:N-1)/f_sample) + phase_shift); % Signal at antenna 1
signal1_noised = awgn(signal1, snr, 'measured'); %Add white gaussian noise to signal

k = N*f_signal/f_sample; % k equivalent to signal frequency

f_norm = f_signal/f_sample;

%for k = 0:1:N

%% Goertzel constants
omega = (2*pi/N) * k; 
%omega = 2 * pi * f_norm;
coeff = 2 * cos(omega);
coeff2 = exp(-1i*omega);
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
X = va - va_prev*coeff2;
% Re = va_prev - va_prev2*cos(omega);
% Im = 1i*va_prev2*sin(omega);
% X = Re + Im;
%% 

phase = angle(X);
phase_deg = angle(X).*180/pi;
magnitude = abs(X).*2./N;

figure(1)
stem(k, magnitude)
hold on

figure(2)
if(magnitude > 0.1)
    stem(k, phase/pi)
end
hold on


figure(3)
scatter(phase_shift, phase)
hold on

dAnt1Ant2 = lambda*(-phase)/(2*pi);
elevation = asin(dAnt1Ant2/0.15);

figure(4)
scatter(phase_shift, elevation*180/pi)
hold on
end
end
