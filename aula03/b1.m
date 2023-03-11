%x(t)=A*sen(2pi*f0*t)    f0=frequencia    T=1/f0
ta=0.001;
t=0:ta:(0.2*4);
x=sin(10*pi*t + pi/2);
plot(t,x);
figure(1)
xlabel("Tempo (s)")
ylabel("Amplitude (A)")
title("Sinal B")