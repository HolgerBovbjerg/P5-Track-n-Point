clear

%% AoA estimation 
phase_diff = (-pi:0.01:pi);
a = 0.5;
lambda = 3e8/864e6;
x = 0.5*lambda;
d = lambda * (phase_diff / (2*pi));
elevation = asin(d/x);
elevation_deg = elevation*180/pi;
MID = round(length(elevation_deg)/2);
reg_range = MID-5:MID+5;
b1 = transpose(phase_diff(reg_range))\transpose(elevation_deg(reg_range));
pseudo_elevation_deg = phase_diff*b1;

figure(1)
plot(phase_diff, elevation_deg)
hold on
plot(phase_diff, pseudo_elevation_deg)
grid on
title('Phase difference vs. calculated Angle of Arrival')
xlabel('\phi')
xtickformat('%g rad')
%xticks(-pi:pi/4:pi)
%xticklabels({'-\pi','-3/4 \pi','-1/2 \pi','-1/4 \pi','0','1/4 \pi','\pi/2','3/4 \pi','\pi'})
ylabel('Angle of arrival')
ytickformat('degrees')

figure(2)
plot(phase_diff, elevation_deg-pseudo_elevation_deg)
grid on
title('Phase difference vs. approximation error')
xlabel('\phi')
xtickformat('%g rad')
%xticks(-pi:pi/4:pi)
%xticklabels({'-\pi','-3/4 \pi','-1/2 \pi','-1/4 \pi','0','1/4 \pi','\pi/2','3/4 \pi','\pi'})
ylabel('Approximation error')
ytickformat('degrees')

