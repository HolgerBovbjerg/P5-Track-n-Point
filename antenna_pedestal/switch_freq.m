% Parameters
km= 0.0744; 
Ra = 2.3455;
La = 5.9e-6;
J = 117.6e-6;
b = 51.546e-6;
Vbat = 12
Tsim = 0.0000001; %simulation step time
d = 0.5; % duty cycle

%Switch time calc
p = 5;
T=-2*La/Ra*log(1-p/100)

fswitch=1/T; %switch frequency

%----------------------------------------
% Calculations
Tsw=1/fswitch; 
%Tsw = 200*Tsim;
A = [-Ra/La -km/La; km/J -b/J];
B = [1/La;0];
C = [1 0;0 1];
D = [0;0];
Msys = ss(A,B,C,D);
omega0 = km*0.5*Vbat/(km^2+Ra*b)
ioff = -km*omega0/Ra
ion = (Vbat-km*omega0)/Ra
PRaoff = Ra*ioff^2
PRaon = Ra*ion^2
imean = (ion+ioff)/2
Pmean = Ra*imean^2
x0 = [(ion+ioff)/2;omega0]
cycle = round(Tsw/Tsim); %Number of simulation steptimes per cycle
oncycle = round(d*cycle); offcycle = cycle-oncycle; %cycle = oncycle+offcycle;
Time = [0:Tsim:4*cycle*Tsim-Tsim]';
Ucycle = [Vbat*ones(oncycle,1);Vbat*zeros(offcycle,1)];
Ua = [Ucycle;Ucycle;Ucycle;Ucycle];
%Ua = [12*ones(cycle/2,1);zeros(cycle/2,1);12*ones(cycle/2,1);zeros(cycle/2,1)];
Lastcycle = length(Ua)-cycle+1:length(Ua);
Y = lsim(Msys,Ua,Time,x0);
Ia = Y(:,1); 
Omega = Y(:,2);

%---------------------------------------------------------
%Plots
figure(1)
subplot(3,1,1), plot(Time,Ua,Time,km*Omega)
title('Switched motor voltage')
ylabel('Volt')
subplot(3,1,2), 
plot(Time,Ia) 
%ylim([0.3 0.45])
title('Current in rotor')
ylabel('Ampere')
subplot(3,1,3), 
plot(Time, Omega) 
ylim([180 190])
title('Angular velocity')
ylabel('rad/sek')
xlabel('Time [sec]')
PRa = Ra*Ia.*Ia;
PMech = km*Ia.*Omega;
Pbat = Ua.*Ia;
Pinduc = (Ua-km*Omega-Ra*Ia).*Ia;
figure(2)
subplot(3,1,1)
plot(Time,Pbat)
% ylim([0 5.2])
title('P_{bat}')
ylabel('Watt')
subplot(3,1,2), plot(Time,PMech)
title('P_{mech}')
ylabel('Watt')
subplot(3,1,3)
plot(Time, PRa, Time, Pinduc)
% ylim([-2.6 2.6])
title('P_{Ra} and P_{induc}')
ylabel('Watt')
xlabel('Time [sec]')
PRamean = mean(PRa(Lastcycle))
PbatMean = mean(Pbat(Lastcycle))
PMechMean = mean(PMech(Lastcycle))
PinducMean = mean(Pinduc(Lastcycle))
El_Efficiency = PMechMean/PbatMean
