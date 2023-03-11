function [X, f]= Espetro (x,Ta)
N= length(x);

X=fft(x)/N;
X=fftshift(X);

Fa=1/Ta;
df= Fa/N;
f= [0: (N-1)]'*df -Fa/2;

stem(f, abs(X),'.');
xlabel('Frequencia Hz');
ylabel('DFT Magnitude');