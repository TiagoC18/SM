%Ex 5.
clear all;
clc;

%% a)

Ta = 0.01;
t = [0:Ta:(5-Ta)]';

x = zeros(size(t));
x(1:(length(x)/2)) = 1;

[X,fx] = SpectrumSM(x,Ta);

[x,Ta] = ReconstructSM(X,fx);
