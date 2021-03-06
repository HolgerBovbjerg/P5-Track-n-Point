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
phase_compensation = 0.3521;
phase_shift = (5/10)*pi;
signal1 = A*cos((2*pi*f_signal*(0:N-1)/f_sample) + phase_shift); % Signal at antenna 1
signal1_noised = awgn(signal1, snr, 'measured'); %Add white gaussian noise to signal
f_norm = f_signal/f_sample;
omega_0 = (2*pi*f_sample/N); % fundamental frequency (frequency per sample)
omega_signal = 2*pi*f_signal; % signal frequency in rad/s
k = omega_signal/omega_0; % k equivalent to signal frequency
magnitude_plot = zeros(1, N/2);
phase_plot = zeros(1, N/2);


% Bit resolution
ADC_res = 2^12; % ADC resolution
scale = 2^10; % Fixed point scale

signal1_noised = round(signal1_noised*ADC_res/2);

for k = 0:N/2-1

%% Goertzel constants
omega = (2*pi/N) * k; % Frequency of interest
%omega = 2 * pi * f_norm;
coeff = round(scale * 2*cos(omega));
cos_coeff = round(scale * cos(omega));
sin_coeff = round(scale * sin(omega));
coeff2 = round(scale * exp(-1i*omega));
coeff3 = 1;%round(scale * exp(-1i*omega*N));
%%State initialisation
va = 0;
va_prev = 0;
va_prev2 = 0;
x = 0;
%% DFT calculation
for n = 1:N
  va = signal1_noised(n) + (coeff * va_prev)/scale - va_prev2;
  x = x+1;
  va_prev2 = va_prev;
  va_prev = va;
end
% Final calculations
% va = (coeff * va_prev)/scale - va_prev2;
X2 = (coeff3)*(va_prev - (va_prev2*coeff2)/scale);
Re = va_prev - (va_prev2*cos_coeff)/scale;
Im = (va_prev2*sin_coeff)/scale;
X = Re + 1i*Im;

% Re = va_prev - va_prev2*cos_coeff;
% Im = va_prev2*sin_coeff;
% X = Re + 1i*Im;

%% 

phase = angle(X) + phase_compensation;
phase_deg = phase.*180/pi;
magnitude = abs(X)./(N/2);
magnitude_plot(k+1) = magnitude;
phase_plot(k+1) = phase;
end

figure(1)
stem((0:N/2-1), magnitude_plot)

for n=1:N/2
    if(magnitude_plot(n)/ADC_res < 0.1)
        phase_plot(n) = 0;
    end
end
figure(2)
stem((0:N/2-1), phase_plot/pi)

figure(3)
scatter(phase_shift*ones(1,N/2), phase_plot)

dAnt1Ant2 = lambda*(-phase_plot)/(2*pi);
elevation = asin(dAnt1Ant2/0.15);

figure(4)
scatter(phase_shift*ones(1,N/2), elevation*180/pi)
hold on

figure(5)
stem((0:N-1)/f_sample, signal1_noised)
