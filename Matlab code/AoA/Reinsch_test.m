clear;

f_signal = 0.5e6;
fs = 10e6;
N = 2000;
t = (0:N)/fs;
phase_shift = 0/4 * pi;
signal = cos((2*pi * f_signal * t) + phase_shift); % Signal at antenna 
omega0 = 2*pi*f_signal/fs;
omega_0 = (2*pi*fs/N); % fundamental frequency (frequency per sample)
omega_signal = 2*pi*f_signal; % signal frequency in rad/s
k = omega_signal/omega_0; % k equivalent to signal frequency
omega = (2*pi/N) * k; % Frequency of interest
lambda = 2*(cos(omega)-1);
coeff = 2*cos(omega);
cos_coeff = cos(omega);
sin_coeff = sin(omega);
coeff2 = exp(-1j*omega);
% signal = awgn(signal, 45, 'measured');
ADC_res = 2^12; % ADC resolution

x = round(signal*ADC_res/2);

for i = 1:length(x)
    if x(i) == 2048
        x(i) = 2047;
    end
end

sprev = 0;
sn = 0;

deltasn = 0;
deltasnprev = 0;

y = zeros(1, length(t));

num = 0;
for n = 1:length(t)
    num = num + 1;
    sprev = sn;
    sn = deltasn + sprev;
    deltasn = lambda*sn + deltasnprev + signal(n);
    Re = deltasn - lambda*sprev/2;
    Im = sprev *  sin_coeff;
    y(n) = Re + 1j*Im;
end

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
stem(t, x)