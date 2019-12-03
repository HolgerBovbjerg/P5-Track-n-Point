%%%% Antennas lie in the x-y plane %%%%
a1*[-d*cos(alpha) -d*sin(alpha) 0]; %% Antenna 1
a2*[-d*cos(alpha) d*sin(alpha) 0]; %% Antenna 2
a3*[d*cos(alpha3) d*sin(alpha3) 0]; %% Antenna 3
rt*r*[sin(Az)*cos(El) sin(El) cos(Az)*cos(El)]; %% Target Position
k*2*pi/lambda;
phi1*k*norm(rt-a1);
phi2*k*norm(rt-a2);
phi3*k*norm(rt-a3);
delphi12*phi1-phi2;
delphi13*phi1-phi3;
delphi23*phi2-phi3;
%%%% First Order Angle Estimation
sinel*delphi12/(2*k*d*sin(alpha));
cosel*sqrt(1-sinel^2);
sinaz*(delphi13+delphi23-2*k*d*sin(alpha3)*sinel)/(2*k*d*(cos(alpha3)+cos(alpha))*cosel);
Elest1*asin(sinel)*180/pi
Azest1*asin(sinaz)*180/pi