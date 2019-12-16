clear;

f_signal = 0.5e6;
fs = 10e6;
N = 200;
t = (0:N)/fs;
f_norm = f_signal/fs;
omega_norm = 2*pi*f_norm; % Normalised frequency of signal
omega_signal = 2*pi*f_signal; % signal frequency in rad/s
omega_0 = (2*pi*fs/N);% fundamental frequency (frequency per sample in radians)
k = omega_signal/omega_0; % k equivalent to signal frequency
y = zeros(1, 1000);%Result buffer
phase_shift = 0/4 * pi;
omega = (2*pi/N) * k; % Frequency of interest

coeff = 2*cos(omega); % IIR filter constant
cos_coeff = cos(omega); %% Corresponds to the real and imaginary part of
sin_coeff = sin(omega); %% coeff2 = exp(-1j*omega);
coeff3 = exp(-1i*omega*N); % Phase correction constant for non integral k

for m = 0:1000
signal = cos((2*pi * m*1e3 * t) + phase_shift); % Signal at antenna 
signal = awgn(signal, 45, 'measured'); % Simulate noise added to signal
ADC_res = 2^12; % ADC resolution

x = round(signal*ADC_res);
sprev = 0;
sprevprev = 0;
sn = 0;

num = 0;
for n = 1:length(t)-1
    num = num + 1;
    sn = x(n) + coeff * sprev - sprevprev;
    sprevprev = sprev;
    sprev = sn;
end

sn = coeff * sprev - sprevprev;
Re = sn - sprev*cos_coeff;
Im = sprev*sin_coeff;
y(m+1) = coeff3*(Re + 1j*Im);

end
figure(1)
stem(2*abs(y)/(ADC_res*N))

figure(2)
stem(angle(y))

figure(3)
stem(real(y)/ADC_res)

figure(4)
stem(imag(y)/ADC_res)

figure(5)
stem(t, x)
