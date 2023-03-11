clear all
load('Guitar03.mat');
sound(x,fa);
figure(1) %Grafico espetro de SOUND
Ta=1/fa;
[X,f]=Espetro(x,Ta);
stem(f,abs(X),'.');
xlim([-4000 4000]);

Hf=zeros(size(f));
Hf(f>100 & f<400)=1;
Hf(f>-400 & f<-100)=1;
figure(2)
plot(f,Hf);
xlim([-2000 2000]);

w=X.*Hf;

figure(3)
[xfiltrado,t]=Reconstroi(w,f);
plot(t, xfiltrado);
xlabel("Tempo(seg)");
ylabel("Sinal x(t)");

sound(xfiltrado,fa);
