%% Ex 2
addpath('/home/ds/Desktop/sm/guioes/P04Remade');

Ta = 0.01;
N = 100;
subplot(2,2,[1,2]);
[x,t] = GeraSinal(N,Ta);

subplot(2,2,[3,4]);
SpectrumSMRemake(x,Ta,1,1);
