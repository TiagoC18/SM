%%Ex 3


%% Simbolos:
%% Q
%% W
%% S
%% D
%% X
%% C
%% Z
%% V
%% R

%%Temos 9 simbolos, logo precisamos de log2(9) bits ~= 4 bits p/ simbolo

%% Simbolos - Codificacao binaria:
%% Q - 0000
%% W - 0001
%% S - 0010
%% D - 0011
%% X - 0100
%% C - 0101
%% Z - 0110
%% V - 0111
%% R - 1000

%%  A codificacao nao e ambiguo (nunca vamos ter casos em que uma mensagem construida
%%possa representar varias combinacoes de simbolos)

%%  A codificacao e instantanea (Todos os simbolos sao representados pelo mesmo numero
%%de bits, logo nunca acontece termos de esperar pelo proximo bit para saber se chegou ou nao um novo simbolo)