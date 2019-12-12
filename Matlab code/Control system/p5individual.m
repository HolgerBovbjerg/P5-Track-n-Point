%F?lgende script skal teste controllere og se hvorledes forskellige
%konstanter p?virker overf?ringsfunktionen

clc;
clear;
s = tf('s');

%% ============ Variabler ============ %%
%Motor 1:

Jm1 = 4.84*10^-6;
Bm1 = 5.1230*10^-6;
Kt1 = 0.01174;
Ke1 = 0.0209;
La1 = 4.43*10^-3;
Ra1 = 6.3314;
N1 = 1/2592;
%Motor 2:
Jm2 = 117.6*10^-6;
Bm2 = 51.546*10^-6;
Kt2 = 0.084;
Ke2 = 0.0744;
La2 = 5.9*10^-3;
Ra2 = 2.3455;
N2 = 1/48.6;

%Load
Jl = 0.012;
Bl = 0.017;

%Feedback
H = 1;

%% ============ Overf?ringsfunktioner ============%%
%% =================== Plants ===================%%
G1 = (N1*Kt1/Ra1)/((Jm1*N1^2+Jl)*s^2 + (Bm1*N1^2+Bl+(Kt1*Ke1*N1^2/Ra1))*s)
G2 = (N2*Kt2/Ra2)/((Jm2*N2^2+Jl)*s^2 + (Bm2*N2^2+Bl+(Kt2*Ke2*N2^2/Ra2))*s)

%% ================= Controllers =================%%
% Test will begin with defining system1 without system2. This will be done
% as a standard system with unity feedback.

%% ====================== C1 ======================%%
% STEP RESPONSE/STABILITY WITHOUT CONTROLLER

Pstep = bodeoptions;
Pstep.YLim = {[0 2]};
Pstep.XLim = {[0 30]};

NPstart=2;
NPincr=2;
NPstop=110;
% Kp=110;

NDstart=1;
NDincr=1;
NDstop=50;
Kd = 50; % Formerly 50

NIstart=1;
NIincr=1;
NIstop=1;
Ki = 1;

%% ==================== DEFINE KP ==================== %%

% for Kp = NPstart:NPincr:NPstop
% if Kp == NPstart
%     figure('Name', 'Step - Kp controller')
%     hold on;
% end
% step(feedback((pid(Kp))*G1,H),Pstep)
% end
% 
% Legend=cell(((NPstop-(NPstart-NPincr))/NPincr),1);
% N=1;
% for iter=NPstart:NPincr:NPstop
%     Legend{N}=strcat('Kp=', num2str(iter));
%     if N < NPstop/NPincr
%     N=N+1;
%     end
% end
% legend(Legend);

%% ==================== DEFINE KD ==================== %%

% for Kd = NDstart:NDincr:NDstop
% if Kd == NDstart
%     figure('Name', 'Step - Kd controller')
%     hold on;
% end
% step(feedback((pid(Kp,Ki,Kd))*G1,H))
% end
% 
% Legend=cell(((NDstop-(NDstart-NDincr))/NDincr),1);
% N=1;
% for iter=NDstart:NDincr:NDstop
%     Legend{N}=strcat('Kd=', num2str(iter));
%     if N < NDstop/NDincr
%     N=N+1;
%     end
% end
% legend(Legend);


%% ==================== DEFINE KI ==================== %%

% for Ki = NIstart:NIincr:NIstop
% if Ki == NIstart
%     figure('Name', 'Step - Kd controller')
%     hold on;
% end
% step(feedback((pid(Kp,Ki,Kd))*G1,H))
% end
% 
% Legend=cell(((NIstop-(NIstart-NIincr))/NIincr),1);
% N=1;
% for iter=NIstart:NIincr:NIstop
%     Legend{N}=strcat('Ki=', num2str(iter));
%     if N < NIstop/NIincr
%     N=N+1;
%     end
% end
% legend(Legend);

%% ==================== DEFINE C1 ==================== %%

% pidTuner(G1,'p')
% pidTuner(G1,'pi')
% pidTuner(G1,'pd')

  pidTuner(G2,'pid')

C1 = pid(713.2,4.903,1829);

T1c = C1*G1;

T1d = c2d(T1c,0.025,'tustin')

% figure('Name','C1 - Step Response')
% step(feedback(G1,H))
% grid on;
% 
% figure('Name','C1 - Open Loop Margin')
% margin(G1*H);
% grid on;
% 
% figure('Name','C1 - Closed Loop')
% bode(feedback(G1,H))
% grid on;

%% ==================== DEFINE C2 ==================== %%

% NP2start=1;
% NP2incr=1;
% NP2stop=30;
% Kp2=30;
% 
% for Kp2 = NIstart:NIincr:NIstop
% if Kp2 == NIstart
%     figure('Name', 'Step - Kd controller')
%     hold on;
% end
% step(feedback(C1*(Kp2*G2+G1),H))
% end
% 
% Legend=cell(((NP2stop-(NP2start-NP2incr))/NP2incr),1);
% N=1;
% for iter=NP2start:NP2incr:NP2stop
%     Legend{N}=strcat('Kp2=', num2str(iter));
%     if N < NP2stop/NP2incr
%     N=N+1;
%     end
% end
% legend(Legend);









