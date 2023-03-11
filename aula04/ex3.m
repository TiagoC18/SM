Ta=0.001;
f0=1;
Np=4;
K=14;
N=round(Np/(f0*Ta));
t=[0:(N-1)]'*Ta;
y= sawtooth(2*pi*f0*t+pi/2,1/2);
plot(t,y)
[ak,bk]= CalcFourierSeries(Ta,1/f0,y,K);
figure(62);
plot(0:K, ak, '*',0:K,bk,'*');
xlabel('K');