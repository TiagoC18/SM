%Ex 2.
figure(1);
%% a)

T = 1;
Ta =  10 * T /1000;
t = [0:Ta:(10*T-Ta)]';

x = sin(2*pi*t);

subplot(2,8,[1,2,3,4]);
[X,fx] = SpectrumSM(x,Ta);

%% b)

Ta = 0.01;
t = [0:Ta:5-Ta]';

y = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t - pi/4);

subplot(2,8,[5,6,7,8]);
[Y,fy] = SpectrumSM(y,Ta);

%% c)

Ta = 0.01;
T = 1;
N = 5*T;
t = [0:Ta:N-Ta];
z = zeros(length(t));
z(1:length(z)/2) = 1;
[Z,fz] = SpectrumSM(z,Ta);


%% d)

Ta =  0.01
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
%figure(2);
%plot(t,x);

subplot(2,8,[13,14,15,16]);
[Q,fq] = SpectrumSM(q,Ta);

figure(2);
ReconstructSM(Q,fq);
