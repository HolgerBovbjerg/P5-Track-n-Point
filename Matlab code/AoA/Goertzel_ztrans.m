clear;

f_sample = 10e6; % Sampling frequency [Hz} 
N = 200;
f_signal = 0.5e6;

omega_0 = (2*pi*f_sample/N); % fundamental frequency (frequency per sample)
omega_signal = 2*pi*f_signal; % signal frequency in rad/s
k_sig = omega_signal/omega_0; % k equivalent to signal frequency

omega = (2*pi/N) * k_sig; % Frequency of interest

coeff = 2 * cos(omega);
cos_coeff = cos(omega);
sin_coeff = sin(omega);
coeff2 = exp(-1i*omega);
coeff3 = exp(-1i*omega*N);

b1 = [1  coeff2];
a1 = [1 -coeff 1];

b = b1;
a = a1;

[h,w] = freqz(b,a,'whole',200);

plot(w/pi,20*log10(abs(h)))
ax = gca;
ax.YLim = [-100 20];
ax.XTick = 0:.5:2;
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude (dB)')