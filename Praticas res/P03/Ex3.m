%Ex3.

Ta = 0.01;
f0 = 1;
Np = 6;

ak = zeros(100,1);
bk = zeros(100,1);

impares = 1:2:100;
bk(impares) = 4./(impares*pi);

[x,t] = Ex3P3F(Ta,f0,Np,ak,bk);


figure(1);

plot(t,x);

xlabel('t');
ylabel('x(t)');
title("Grafico Onda Sinusoidal");
grid on;