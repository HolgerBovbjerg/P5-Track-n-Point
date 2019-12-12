clear;

f_signal = 0.5e6;
fs = 10e6;
N = 200;
t = (0:N)/fs;

%Result buffer
y = zeros(1, 1000);
for m = 300:700
phase_shift = 2/4 * pi;
signal = cos((2*pi * m*1e3 * t) + phase_shift); % Signal at antenna 
omega0 = 2*pi*f_signal/fs;
omega_0 = (2*pi*fs/N); % fundamental frequency (frequency per sample)
omega_signal = 2*pi*f_signal; % signal frequency in rad/s
k = omega_signal/omega_0; % k equivalent to signal frequency
omega = (2*pi/N) * k; % Frequency of interest
coeff = 2*cos(omega);
cos_coeff = cos(omega);
sin_coeff = sin(omega);
coeff2 = exp(-1j*omega);
coeff3 = exp(-1i*omega*N);
signal = awgn(signal, 45, 'measured');
ADC_res = 2^12; % ADC resolution

x = round(signal*ADC_res/2);

for i = 1:length(x)
    if x(i) == 2048
        x(i) = 2047;
    end
end

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
y(m) = coeff3*(Re + 1j*Im);

end
figure(1)
stem(abs(y)/ADC_res)

figure(2)
stem(angle(y))

figure(3)
stem(real(y)/ADC_res)

figure(4)
stem(imag(y)/ADC_res)

figure(5)
stem(t, x)
