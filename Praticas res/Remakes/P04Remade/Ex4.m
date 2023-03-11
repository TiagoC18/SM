%%Ex 4.
clear all;
clc;

N = 500;
Ta = 0.001;
t = [0:N-1] * Ta;
x = 0;

for i = 1 : 20
  x = x+ cos(rand()*20*2*pi*t + rand()*2*pi);
endfor

subplot(2,4,[1,2,3,4]);
plot(t,x);
title("Non-Periodic Sign Sequence");

subplot(2,4,[5,6]);
[XW,fXW] = SpectrumSMRemake(x,Ta,0,0)
title("Spectrum without Blackman Windowing");

subplot(2,4,[7,8]);
[XW,fXW] = SpectrumSMRemake(x,Ta,1,0)
title("Spectrum with Blackman Windowing");
