clear
clear figures

fs = 3e9;
Ts = 1/fs; 
Ls = 1500; 
t = (0:Ls-1)*Ts;
snr = 45;

fc = 864e6;
x1 = cos(2*pi*fc*t);
x1_noised = awgn(x1, snr, 'measured');
x2 = cos(2*pi*fc*t - pi/2);
x2_noised = awgn(x2, snr, 'measured');

y1 = fft(x1_noised);
z1 = fftshift(y1);
y2 = fft(x2_noised);
z2 = fftshift(y2);

ly = length(y1);
f = (-ly/2:ly/2-1)/ly*fs;

tol = 1e-1;
z1(abs(z1)/ly < tol) = 0;
z2(abs(z2)/ly < tol) = 0;

theta1 = angle(z1);
theta2 = angle(z2);
phase1=angle(max(z1));
phase2=angle(max(z2));

figure(1)
hold on
stem(f,abs(z1)/ly)
stem(f,abs(z2)/ly)
xlabel 'Frequency (Hz)'
ylabel '|y|'
grid
figure(2)
hold on
xlabel 'Frequency (Hz)'
ylabel '|y|'
grid
stem(f,theta1/pi)
stem(f,theta2/pi)
xlabel 'Frequency (Hz)'
ylabel 'Phase / \pi'
grid