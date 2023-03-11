%x(t)=A*sen(2pi*f0*t)    f0=frequencia    T=1/f0
ta=0.001;
f=gcd(3,4);
t=0:ta:(1/f*4);
x=sin(6*pi*t)+sin(8*pi*t+0.1);
plot(t,x);
figure(1)
xlabel("Tempo (s)")
ylabel("Amplitude (A)")
title("Sinal E")