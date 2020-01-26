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

freq_vector = 1e3*(0:1000);
mag = 2*abs(y)/(ADC_res*N);
phase = angle(y);

t = tiledlayout(2,1);
ax1 = nexttile;
stem(ax1,freq_vector,mag, 'Color','#0072BD')
ylabel('Magnitude')
ax1.FontSize = 14;
grid(ax1,'on')

ax2 = nexttile;
phase = angle(y);
for a = 1:length(phase)
    if mag(a) < 0.2
        phase(a) = 0;
    end
end
stem(ax2,freq_vector, phase, 'Color','#D95319')
ylabel('Phase [rad]')
xlabel('Frequency of input signal [Hz]')
ax2.FontSize = 14;
grid(ax2,'on')

linkaxes([ax1,ax2],'x');
xticklabels(ax1,{})
title(t, 'Goertzel magnitude and phase when varying input signal')
t.TileSpacing = 'compact';
t.Padding = 'compact';

saveas(gcf,'Goertzel_signal_sweep','epsc')
