clear 

%% Motor1 parameters
Ra1 = 2.3455;
La1 = 5.9e-3;
Bm1 = 51.546e-6;
Im1 = 117.6e-6;
k1 = 0.08;

%% Motor2 parameters
Ra2 = 6.3314;
La2 = 4.43e-3;
Bm2 = 5.123e-6;
Im2 = 4.84e-6;
k2 = 0.02;


%% Pedestal parameters
r1 = 1;
r2 = 1000
Bp = 0;
Ip = 0; 

%% Transfer function
num1 = [k1];
denom1 = [(La1*Im1*r2/r1 + La1*Ip*r1/r2)...
 (Ra1*Im1*r2/r1 + La1*Bm1*r2/r1 + Ra1*Ip*r1/r2 + La1*Bp*r1/r2)...
 (Ra1*Bm1*r2/r1 + Ra1*Bp*r1/r2 + k1^2*r2/r1)];

sys1 = tf(num1, denom1)

num2 = [k2];
denom2 = [(La2*Im2*r2/r1 + La2*Ip*r1/r2)...
 (Ra2*Im2*r2/r1 + La2*Bm2*r2/r1 + Ra2*Ip*r1/r2 + La2*Bp*r1/r2)...
 (Ra2*Bm2*r2/r1 + Ra2*Bp*r1/r2 + k2^2*r2/r1)];

sys2 = tf(num2, denom2)

step(sys1,sys2)
