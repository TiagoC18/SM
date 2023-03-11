%%Ex 5
%%Ex 2)
clc;
clear all;

%%a)
T = 1;
Ta =  10 * T /1000;
t = [0:Ta:(10*T-Ta)]';
x = sin(2*pi*t);

subplot(2,8,[1,2]);
plot(t,x);
title("x(t)")


[X,fx] = SpectrumSMRemake(x,Ta,0,0);

subplot(2,8,[3,4]);
[x,Ta] = ReconstructSMRemake(X,fx,0);
title("x(t) Reconstruction")


%%b)
Ta = 0.01;
t = [0:Ta:5-Ta]';
y = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t - pi/4);

subplot(2,8,[5,6]);
plot(t,y);
title("y(t)")

[Y,fy] = SpectrumSMRemake(y,Ta,0,0);


subplot(2,8,[7,8]);
[y,Ta] = ReconstructSMRemake(Y,fy,0);
title("y(t) Reconstruction")


%%c)
%%%HOW TO MAKE A SQUARE WAVE OF FREQUENCY 1Hz:
Ta = 0.01;
t = [0:Ta:5-Ta];
z = zeros(length(t));
z(1:length(z)/2) = 1;

subplot(2,8,[9,10]);
plot(t,z);
title("z(t)")


[Z, fz] = SpectrumSMRemake(z,Ta,0,0);

subplot(2,8,[11,12]);
[z,Ta] = ReconstructSMRemake(Z,fz,0);
title("z(t) Reconstruction")


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

subplot(2,8,[13,14]);
plot(t,q);
title("q(t)")

[Q,fq] = SpectrumSMRemake(q,Ta,0,0);


subplot(2,8,[15,16]);
[q,Ta] = ReconstructSMRemake(Q,fq,0);
title("q(t) Reconstruction")



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



figure(2)

N = 500;
Ta = 0.001;
t = [0:N-1] * Ta;
x = 0;

for i = 1 : 20
  x = x+ cos(rand()*20*2*pi*t + rand()*2*pi);
endfor

subplot(3,4,[1,2,3,4]);
plot(t,x);
title("Non-Periodic Sign Sequence");

[X,fX] = SpectrumSMRemake(x,Ta,0,0);
title("Spectrum without Blackman Windowing");

[XW,fXW] = SpectrumSMRemake(x,Ta,1,0);
title("Spectrum with Blackman Windowing");


subplot(3,4,[5,6,7,8]);
[x,Ta] = ReconstructSMRemake(X,fX,0);
title("Signal Reconstruction without Blackman");

subplot(3,4,[9,10,11,12]);
[x,Ta] = ReconstructSMRemake(XW,fXW,1);
title("Signal Reconstruction with Blackman");
