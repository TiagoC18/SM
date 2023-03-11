%Ex 3.

T = 0.5; %Periodo do sinal
Ta = 5 * (T /1000);
t = [0:Ta:(5*T-Ta)]';

x = 2*sin(4*pi*t);

a = Ex3F(x,Ta,T)

%--------------------------------

T = 1/5; %Periodo do sinal
Ta = 5 * T /1000;
t = [0:Ta:(5*T-Ta)]';

y = sin(10*pi*t + pi/2);


b = Ex3F(y,Ta,T)

%--------------------------------
T = 1; %Periodo do sinal
Ta = 5 * (T /1000);
t = [0:Ta:(5*T-Ta)]';

z = sin(6*pi*t) + sin(8*pi*t);

c = Ex3F(z,Ta,T)
%--------------------------------
T = 1; %Periodo do sinal
Ta = 5 * (T /1000);
t = [0:Ta:(5*T-Ta)]';

w = sin(6*pi*t) + sin(8*pi*t + 0.1);

d = Ex3F(w,Ta,T)

%-------------------------------- ???
T = 2; %Periodo do sinal
Ta = 5 * (T /1000);
t = [0:Ta:(5*T-Ta)]';

q = sin(6*pi*t) + sin(7*pi*t) + sin(8*pi*t);

e = Ex3F(q,Ta,T)



