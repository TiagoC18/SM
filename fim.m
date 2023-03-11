function [y_t_f, t_f] = tempo_frequencia(T_F, Ta, Fo, Np, Vamp, Vfreq,Vfas)
    T = 1/Fo;
    t = 0:Ta:Np*T;
    Nt = length(Vamp);

    
    for i = 1:Nt
        X = Vamp(i)*sin(2*pi*Vfreq(i)*t+Vfas(i));
    end     

    %calcular
    N=length(X);
    Y=fftshift(fft(X))/N;

    df=Fo/N;
    f=(0:(N-1))*df-Fo/2;

    if T_F == 1
        X = ifftshift(X);
        x = ifft(X);
      
        fa = f(end)*2;
        Ta = 1/fa;
      
        N = length(x);
        t = [0:(N-1)]'*Ta;
        y_t_f = x;
        t_f = t;
        
    end
    if T_F == 2
        
        y_t_f = f;
        t_f = abs(Y);
    else
        disp("T_F deverá ter valores entre 0, 1 e 2.")
    end
end