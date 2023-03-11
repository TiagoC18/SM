%Ex4.

Ta = 0.01;
f0 = 1;
Np = 6;

ak = zeros(100,1);
bk = zeros(100,1);

%Pares:
impares = 2:2:100;

ak(impares) = 4./(impares*pi);
[x,t] = Ex3P3F(Ta,f0,Np,ak,bk);

figure(1);
subplot(2,2,[1,2]);
hold on;

plot(t,x);

xlabel('t');
ylabel('x(t)');
title("Grafico Onda Sinusoidal Par");
grid on;

%Impares:
ak = zeros(100,1);
bk(impares) = 4./(pares*pi);
[x,t] = Ex3P3F(Ta,f0,Np,ak,bk);

figure(1);
subplot(2,2,[3,4]);
hold on;

plot(t,x);

xlabel('t');
ylabel('x(t)');
title("Grafico Onda Sinusoidal Impar");
grid on;
