t = (0:L_sample-1)*T_sample; % Time vector
freq_carrier = 964e6; % Carrier frequency [Hz]
Ac = 1; % Amplitude of the carrier
c = physconst('lightspeed'); % Speed of light [m/s]
lambda = c/freq_carrier; % Wavelength of signal [m]
x = lambda/2;
phase = (-pi:pi/100:pi);
theta = (180/pi) * asin( ( (lambda*phase) / (2*pi) ) / x );
plot(phase, theta)

