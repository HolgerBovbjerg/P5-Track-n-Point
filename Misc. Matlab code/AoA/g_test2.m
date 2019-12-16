clear;

f_signal = 0.5e6;
fs = 10e6;
N = 200;
t = (0:N)/fs;

signal = [0 633 1204 1657 1948 2047 1948 1657 1204 633 0 -633 -1204 -1657 -1948 -2048 -1948 -1657 -1204 -633]; % Signal at antenna 1
signal = [signal signal signal signal signal]
signal = [signal signal]
omega0 = 2*pi*f_signal/fs;
omega_0 = (2*pi*fs/N); % fundamental frequency (frequency per sample)
omega_signal = 2*pi*f_signal; % signal frequency in rad/s
k = omega_signal/omega_0; % k equivalent to signal frequency
omega = (2*pi/N) * k; % Frequency of interest
coeff = 2*cos(omega);
coeff2 = exp(-1j*omega);

ADC_res = 2^12; % ADC resolution
x = signal;
sprev = 0;
sprevprev = 0;
sn = 0;
y = zeros(length(t), 1);
num = 0;
for n = 1:length(t)
    num = num+1;
    sprevprev = sprev;
    sprev = sn;
    sn = x(n) + coeff * sprev - sprevprev;
    y(n) = sn - exp(-1j*omega) * sprev;
end
% sn = coeff * sprev - sprevprev
% y(N+1) = sn - coeff2 * sprev;
figure(1)
stem(abs(y))
figure(2)
stem(angle(y))
a_y = angle(y);
figure(3)
stem(real(y)/ADC_res)
figure(4)
stem(imag(y)/ADC_res)
figure(5)
stem((0:N-1)/fs, signal)