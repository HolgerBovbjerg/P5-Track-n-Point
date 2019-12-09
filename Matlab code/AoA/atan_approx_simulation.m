clear 

x = 1*(-pi:0.01:pi)

y1 = atan(x)

MID = round(length(x)/2);
reg_range = MID-50:MID+50;
b1 = transpose(x(reg_range))\transpose(y1(reg_range));
pseudo_atan = x*b1;
figure(1)
plot(x,y1)

figure(2)
plot(x,pseudo_atan-y1)