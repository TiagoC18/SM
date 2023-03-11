%Ex 4.
min = -pi;
max = pi;

T = 1/3;
Ta = 5 * T /1000;
t = [0:Ta:(5*T-Ta)]';

f1 = 3;
f2 = 3/1.1;
f3 = 3/1.2;

figure(1);
xlabel('time (s)');
ylabel('amplitude');
title('Ex4');
grid;

hold on
for i=0:5
  r = (max-min)*rand(1,3) + min
  x = sin(2*pi*f1*t + r(1)) + sin(2*pi*f2*t + r(2)) + sin(2*pi*f3*t + r(3));
  plot(t,x);
endfor

hold off

z = 1+j+sqrt(2)*e^(j*7*pi/4)