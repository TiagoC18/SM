%%Ex 3
clear all
addpath('/home/ds/Desktop/sm/guioes/P04Remade');


N = 1e2;
Ta = 0.01;

hold on;
subplot(3,2,[1,2])
[x, t] = GeraSinal(N, Ta);
title("Sinal Gerado")

subplot(4,2,[5,6])
[X, f] = SpectrumSMRemake(x, Ta, 0, 1);
title("Espetro do Sinal Gerado");

filterX = zeros(1, length(f));
filterX(f<-2 | f>2) = X(f<-2 | f>2);  %filtro

subplot(4,2,[7,8])
stem(f, abs(filterX));
title("Espetro do Sinal Filtrado");

subplot(4,2,[3,4])
[x, Ta] = ReconstructSMRemake(filterX, f,0);
title("Sinal Filtrado");

hold off;
