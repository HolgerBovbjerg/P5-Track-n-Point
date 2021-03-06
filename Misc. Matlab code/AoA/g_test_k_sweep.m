f_signal = 0.5e6;
fs = 10e6;
N = 200;

t = (0:N)/fs;
phase_shift = 0/4 * pi;
signal = cos((2*pi * f_signal * t) + phase_shift); % Signal at antenna 
omega0 = 2*pi*f_signal/fs;
omega_0 = (2*pi*fs/N); % fundamental frequency (frequency in radians per sample)
omega_signal = 2*pi*f_signal; % signal frequency in rad/s

%result buffer
y = zeros(1, length(t));
phase = zeros(1, N/2);


omega_0 = (2*pi*fs/N); % fundamental frequency (frequency per sample)
omega_signal = 2*pi*f_signal; % signal frequency in rad/s
k_sig = omega_signal/omega_0; % k equivalent to signal frequency

for m = 1:N*5/2 %N/2
k = (m-1)*1/5; % k equivalent to signal frequency
omega = (2*pi*k/N) ; % Frequency of interest
coeff = 2*cos(omega);
cos_coeff = cos(omega);
sin_coeff = sin(omega);
coeff2 = exp(-1j*omega);
coeff3 = exp(-1i*omega*N);


%signal = awgn(signal, 45, 'measured');
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

freq_vector = (0:N*5/2-1)*2*omega_0/(2*pi);
mag = 2*abs(y)/(ADC_res*N/2);

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
xlabel('Frequency [Hz]')
ax2.FontSize = 14;
grid(ax2,'on')

linkaxes([ax1,ax2],'x');
xticklabels(ax1,{})
title(t, 'Goertzel magnitude and phase when varying k')
t.TileSpacing = 'compact';
t.Padding = 'compact';

saveas(gcf,'Goertzel_k_sweep','epsc')
