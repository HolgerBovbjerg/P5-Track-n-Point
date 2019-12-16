clear

N = 18; 
 MaxPos = (2^(N-1))-1; 
 MaxNeg = (2^(N-1));

h  = [1.902113032590307 
    0.951056516295154 
    0.309016994374947];

hNorm = h./max(h)

ptrNeg = find(hNorm<0);

hQ = hNorm .* MaxPos

hQ(ptrNeg) = hNorm(ptrNeg) .* MaxNeg

hQ = round(hQ)

plot(h)
title('Floating-Point Response')

figure
plot(hQ)
title('Quantized Response')