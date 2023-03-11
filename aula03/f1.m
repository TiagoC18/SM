%x(t)=A*sen(2pi*f0*t)    f0=frequencia    T=1/f0

ta=0.001;
f=1/2;
t=0:ta:(1/f*4);
y=sin(6*pi*t)+sin(8*pi*t)+sin(7*pi*t);
plot(t,y);
figure(1)
xlabel("Tempo (s)")
ylabel("Amplitude (A)")
title("Sinal D")