%Ex 1


figure(1);
%a)

T = 0.5; %Periodo do sinal
Ta = 5 * T /1000;
t = [0:Ta:(5*T-Ta)]';

subplot(3,2,1);
x = 2*sin(4*pi*t);

plot(t,x);
xlabel('time (s)');
ylabel('amplitude');
title('Signal A');

grid;

%--------------------------------

T = 1/5; %Periodo do sinal
Ta = 5 * T /1000;
t = [0:Ta:(5*T-Ta)]';

subplot(3,2,2);
y = sin(10*pi*t + pi/2);

plot(t,y);
xlabel('time (s)');
ylabel('amplitude');
title('Signal B');

grid;

%--------------------------------
subplot(3,2,3);
z = sin(6*pi*t) + sin(8*pi*t);

plot(t,z);
max(z(:))
xlabel('time (s)');
ylabel('amplitude');
title('Signal C');

grid;

%--------------------------------
subplot(3,2,4)
w = sin(6*pi*t) + sin(8*pi*t + 0.1);

plot(t,w);
max(w(:))
xlabel('time (s)');
ylabel('amplitude');
title('Signal D');

grid;

%-------------------------------- 
subplot(3,2,[5,6])
q = sin(6*pi*t) + sin(7*pi*t) + sin(8*pi*t);
T = 2; %Periodo do sinal
Ta = 2 * T /1000;
t = [0:Ta:(2*T-Ta)]';

plot(t,q);
max(q(:))
xlabel('time (s)');
ylabel('amplitude');
title('Signal E');

grid;



