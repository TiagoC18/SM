%Guiao 6 %Segundo exercicio
%Ex1
Ta = 0.001;
N = 10000;
figure(1);
[x,t] = GeraSinal(N,Ta);
plot(t,x);

%Ex2
figure(2);
[X,f]= Espetro(x,Ta);
plot(f,abs(X));
xlim([-25,25])