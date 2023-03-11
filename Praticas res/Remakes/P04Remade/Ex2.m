%%Ex 2)
clc;
clear all;

%%a)
T = 1;
Ta =  10 * T /1000;
t = [0:Ta:(10*T-Ta)]';
x = sin(2*pi*t);

subplot(2,8,[1,2,3,4]);
[X,fx] = SpectrumSMRemake(x,Ta,0,1);
title("x(t)'s Spectrum")

%%b)
Ta = 0.01;
t = [0:Ta:5-Ta]';
y = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t - pi/4);

subplot(2,8,[5,6,7,8]);
[Y,fy] = SpectrumSMRemake(y,Ta,0,1);
title("y(t)'s Spectrum")

%%c)
%%%HOW TO MAKE A SQUARE WAVE OF FREQUENCY 1Hz:
Ta = 0.01;
t = [0:Ta:5-Ta];
z = zeros(length(t));
z(1:length(z)/2) = 1;
plot(t,z)

subplot(2,8,[9,10,11,12]);
[Z, fz] = SpectrumSMRemake(z,Ta,0,1);
title("z(t)'s Spectrum")

%%d)
%%%HOW TO MAKE A TRINAGULAR WAVE OF FREQUENCY 1Hz:
Ta =  0.01;
t1 = [0 : Ta : (0.25-Ta)]';
t2 = [0.25 : Ta : (0.75-Ta)]';
t3 = [0.75 : Ta : (1-Ta)]';


x1 = (1/0.25)*t1;

b = 0.5/0.25;
x2 = -(1/0.25)*t2 + b;

c = -1/0.25;
x3 = (1/0.25)*t3 + c;

xp = [x1;x2;x3];
tp = [t1;t2;t3];

q = [xp ; xp ; xp ; xp ; xp];
t = [0 : Ta : (5-Ta)]';

subplot(2,8,[13,14,15,16]);
[Q,fq] = SpectrumSMRemake(q,Ta,0,1);
title("q(t)'s Spectrum")


