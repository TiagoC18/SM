%% a
figure(1)
T=1; %1seg
np=10; % periodos
Ta=0.01;
N=T/Ta*np;
t= (0:N-1)*Ta;

x= sin(2*pi*t);

[X, fx]= Espetro(x,Ta);
stem(fx, abs(X),'.');
xlabel('Frequencia Hz');
ylabel('DFT Magnitude');
%% b
figure(2)
T=50; %seg
np=4; %4 periodos
Ta=0.01;
N=T/Ta*np;
t= (0:N-1)*Ta;

x= sin(10*pi*t)+ cos(12*pi*t) + cos(14*pi*t-pi/4);

[X, fx]= Espetro(x,Ta);
stem(fx, abs(X),'.');
xlabel('Frequencia Hz');
ylabel('DFT Magnitude');

%% c
figure(3)
T=1; %seg
np=100; %100 periodos
Ta=0.1;
N=T/Ta*np;
t= (0:N-1)*Ta;

x= 10+ 14*cos(20*pi*t-pi/3)+ 8*cos(40*pi*t+pi/2);

[X, fx]= Espetro(x,Ta);
stem(fx, abs(X),'.');
xlabel('Frequencia Hz');
ylabel('DFT Magnitude');

%% d
figure(4)
T=5; %seg
np=4; %4 periodos
Ta=0.01;
N=T/Ta*np;
t= (0:N-1)*Ta;

x= square(t*2*pi*1);
plot(t2,xx, '.');

[X, fx]= Espetro(x,Ta);
stem(fx, abs(X),'.');
xlabel('Frequencia Hz');
ylabel('DFT Magnitude');