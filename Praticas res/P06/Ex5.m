%% Ex 5.
clear all;
addpath('/home/ds/Desktop/sm/guioes/P04Remade');

N = 1e2;
Ta = 0.01;

[x, t] = GeraSinal(N, Ta);

[X, f] = SpectrumSMRemake(x, Ta, 0, 1);

filterX = zeros(1, length(f));
filterX(f>-2 & f<2) = X(f>-2 & f<2);  %filtro
[x, Ta] = ReconstructSMRemake(filterX, f,0);


filterX = zeros(1, length(f));
filterX(f<-2 | f>2) = X(f<-2 | f>2);  %filtro
[r, Ta] = ReconstructSMRemake(filterX, f,0);


Px = (1/length(x)) * abs(x) * abs(x)';
Pr = (1/length(r)) * abs(r) * abs(r)';

SNR = Px / Pr
SNRdB = 10*log10(SNR)
