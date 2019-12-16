clear 
x=[-pi -pi/2 -pi/4 0 pi/4 pi/2 pi];
y = [-3.1394 -1.5686 -0.7823 0.0021 0.7825 1.5729 2*pi-3.1394];
x1 = (-pi:0.01:pi)
b = transpose(x)\transpose(y);

figure(1)
scatter(x, y)
hold on
grid on
legend('Calculated phase')
plot(x1,x1*b)
legend('Phase precision regression')
title('Phase shift vs. Calculated phase')
xlabel('Phase shift [rad]')
ylabel('Calculated phase [rad]')

figure(2)
plot(x,x-y)
grid on
title('Phase shift vs. phase error')
xlabel('Phase shift [rad]')
ylabel('Error [rad]')
legend('Phase error')