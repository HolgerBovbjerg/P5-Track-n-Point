%%%%%%%%%%
%% This program computes the location of a target in 2-D using
%% trilateration. The trilateration solution uses phase differencing
%% with four (4) receivers where the trialteration can be either
%% CPT or RGS. The distinction is in which error model for range error is
%% chosen to be used in the code (choose line 15 or line 16)
clear
close all
freq=2e9; %% radar operating center frequency (Hz)
bw=2e6; %% radar signal bandwidth (Hz)
snr=20; %% SNR at the receivers (dB)
c=3e8; %% speed of light (m/s)
lambda=c/freq; %% wavelength (m)
%%choose error model
%% rang=lambda/(2*pi*10^(snr/20)); %% CPT range error
rang=c/(2*bw*10^(snr/20)); %% RGS range error
%% distance between receivers (size of the area bounded by the receivers)
rrr=100; %(m)
%% Location of the radar receivers
r1=rrr*[1 0]/2;
r2=rrr*[0 1]/2;
r3=rrr*[-1 0]/2;
r4=rrr*[0 -1]/2;
%%Location of the target
r=rrr*[.1 .1]/2;
%%range estimates
R1=norm(r1-r);
R2=norm(r2-r);
R3=norm(r3-r);
R4=norm(r4-r);
%%phase difference estimates
phi12=(R1-R2);
phi23=(R2-R3);
phi34=(R3-R4);
phi41=(R4-R1);
%%vector of phase differences
PD=[phi12 phi23 phi34 phi41];
plot(r1(1),r1(2))
hold on
plot(r2(1),r2(2));
plot(r3(1),r3(2));
plot(r4(1),r4(2));
for kk=1:1000
err=rang*randn(1,4); %% range error based on error model
PDE=PD+err; %% erred phase differences
rr=[0 0]';
for k=1:20 %% 20 iterations for Newton-Raphson to converge
RR1=norm(r1-rr');
RR2=norm(r2-rr');
RR3=norm(r3-rr');
RR4=norm(r4-rr');
phid12=(RR1-RR2);
phid23=(RR2-RR3);
phid34=(RR3-RR4);
phid41=(RR4-RR1);
PPD=[phid12 phid23 phid34 phid41];
dr1=r1-rr';
dr2=r2-rr';
dr3=r3-rr';
dr4=r4-rr';
%%compute gradient
M=[dr2(1)/RR2-dr1(1)/RR1 dr2(2)/RR2-dr1(2)/RR1
dr3(1)/RR3-dr2(1)/RR2 dr3(2)/RR3-dr2(2)/RR2
dr4(1)/RR4-dr3(1)/RR3 dr4(2)/RR4-dr3(2)/RR3
dr1(1)/RR1-dr4(1)/RR4 dr1(2)/RR1-dr4(2)/RR4];
%%Newton-Raphson algorithm
rr=rr-inv(M'*M)*M'*(PPD'-PDE');
end
xx(kk,:)=rr;
%%plots the distribution of position estimates
plot(rr(1),rr(2),'.r')
xlabel('Cross-Range (m)')
ylabel('Range (m)')
end
hold off