%%Ex 3

load("Mensagem.mat");

[Simbolos,Frequencia] = Alfabeto2(Mensagem)

%%A ordem da frequencia das letras e : Q,W,S,D,X,C,Z,V,R

%%Portanto, podemos definir um codigo binario tal que:

%% Q - 0000
%% W - 0001
%% S - 0010
%% D - 0011
%% X - 0100
%% C - 0101
%% Z - 0110
%% V - 0111
%% R - 1000

%%Como a mensagem tem 304 chars, com este codigo precisariamso de:

Nbits = 4*304

