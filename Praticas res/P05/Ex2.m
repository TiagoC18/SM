%%Ex. 2
clear all;
clf;
close;

%% a)
Ta = 0.2;
t = [0:Ta:5]';

x = sin(2*pi*t)';

figure(1);

subplot(6,2,[1,2]);
ReconstroiSinal(x,Ta);

%% b)
Ta = 0.04;
t = [0:Ta:5-Ta]';

y = (sin(10*pi*t)+cos(12*pi*t)+cos(14*pi*t-pi/4))';

subplot(6,2,[3,4]);
ReconstroiSinal(y,Ta);


%% b)
Ta = 0.1;
t = [-5:Ta:5-Ta]';

z = sinc(5*t)';

subplot(6,2,[5,6]);
ReconstroiSinal(z,Ta);

