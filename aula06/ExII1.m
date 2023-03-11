% II- Quantizacao da Amplitude dos Sinais
%%Exercicio 1
Ta = 0.01;
t = (0 : Ta : 2-Ta)';
sig = sin(2*pi*t);
nbit = 2;
Npal = 2^nbit;
Delta = 2/Npal;
partition = [-1+2*Delta/2 : Delta : 1-Delta/2];
codebook = [-1+Delta/2 : Delta : 1-Delta/2];
[index,quants] = quantiz(sig,partition,codebook);

figure(1);
plot(t,sig,t,quants);
legend("Original signal", "Quantized signal");
grid;
%%Exercicio 2
figure(2);
[X,fx] = Espetro(sig,Ta);
legend("Sinal original")

figure(3);
[x,fx] = Espetro(quants,Ta);
legend("Sinal quantizado");

%%Exercicio 3
figure(4);
ReconstroiSinal(sig,Ta);
legend("Sinal Original");

figure(5);
ReconstroiSinal(quants,Ta);
legend("Sinal Quantizado");
