%x(t)=A*sen(2pi*f0*t)    f0=frequencia    T=1/f0
ta=0.001;
t=0:ta:(0.05*4);

x=sin(20*pi*t + 70*pi/180)+ sin (20*pi*t+ 200*pi/180);
plot(t,x);
figure(1)
xlabel("Tempo (s)")
ylabel("Amplitude (A)")
title("Sinal c")