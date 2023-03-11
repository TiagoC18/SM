function [X,f] = Espetro(x,Ta)
    N = length(x);
    X= fft(x)/N;
    X= fftshift(X);
    
    fa= 1/Ta;
    df= 1/(N*Ta);
    f= [0: (N-1)]'*df -fa/2;
    
    stem(f, abs(X),'.');
    xlabel('Frequencia Hz')
    ylabel('Magnitude')
end