%%Ex. 2
clear all;
clf;
close;

%% a)
Ta = 0.2;
t = [0:Ta:5]';

x = sin(2*pi*t)';
subplot(3,4,[1,2]);
plot(t,x);
title("x(t)")

figure(1);

subplot(3,4,[3,4]);
ReconstroiSinalRemade(x,Ta);
title("x(t) Reconstruido")

%% b)
Ta = 0.04;
t = [0:Ta:5-Ta]';

y = (sin(10*pi*t)+cos(12*pi*t)+cos(14*pi*t-pi/4))';
subplot(3,4,[5,6]);
plot(t,y);
title("y(t)")


subplot(3,4,[7,8]);
ReconstroiSinalRemade(y,Ta);
title("y(t) Reconstruido")


%% b)
Ta = 0.1;
t = [-5:Ta:5-Ta]';

z = sinc(5*t)';
subplot(3,4,[9,10]);
plot(t,z);
title("z(t)")


subplot(3,4,[11,12]);
ReconstroiSinalRemade(z,Ta);
title("z(t) Reconstruido")
