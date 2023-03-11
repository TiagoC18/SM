Ta=0.01;
f0=1;
Np=6;

ak=zeros(100,1);
bk=zeros(100,1);

impares= 1:2:20;
bk(impares)=4./(impares*pi);

[x,t] = ex2ff(Ta,f0,Np,ak,bk);

figure(1);

plot(t,x);
hold on
t2=0:0.1:4;
xx=square(t2*2*pi*1);
plot(t2,xx,'.-');
xlabel('t(s)')
ylabel('x(t)')
title("Grafico Onda Sinusoidal");
grid on;


