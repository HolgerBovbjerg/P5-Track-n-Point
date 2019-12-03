function [elevation] = Goertzel_minimal(signal)
f_sample = 10e6; % Sampling frequency [Hz} 
N = length(signal);
% Antenna parameters
freq_carrier = 964e6; % Carrier frequency [Hz]
x = 0.15;
c = physconst('lightspeed'); % Speed of light [m/s]
lambda = c/freq_carrier; % Wavelength of signal [m]
% Signal generation
f_signal = 0.5e6;
k = N*f_signal/f_sample; % k equivalent to signal frequency

f_norm = f_signal/f_sample;

%for k = 0:1:N

%% Goertzel constants
omega = (2*pi/N) * k; 
%omega = 2 * pi * f_norm;
coeff = 2 * cos(omega);
coeff2 = sin(omega) + 1i*cos(omega);
%%State initialisation
va_prev = 0;
va_prev2 = 0;
%% DFT calculation
for n = 1:N
  va = signal(n) + coeff * va_prev - va_prev2;
  va_prev2 = va_prev;
  va_prev = va;
end
% Final calculations
va = coeff * va_prev - va_prev2;
X = va - va_prev*coeff2;


phase = atan2(real(X),imag(X));
dAnt1Ant2 = lambda*(-phase)/(2*pi);
elevation = asin(dAnt1Ant2/x);