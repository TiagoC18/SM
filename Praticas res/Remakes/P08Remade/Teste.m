clear all;

%%Ex 1

display("Ex 1");

load("Mensagem.mat")
symbols = Alfabeto1(Mensagem);
symbols

%%Ex 2

display("Ex 2");

load("Mensagem.mat")
[symbols,frequency] = Alfabeto2(Mensagem);
symbols
frequency
numBits = 0;
for k = 1 : length(frequency)
  numBits+=4 * (frequency(k)*length(Mensagem) / 100);
endfor

numBits
display("");

%%Ex 6

display("Ex 6");

load("Mensagem.mat")

H = Entropia(Mensagem);
H


