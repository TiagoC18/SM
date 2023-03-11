%%Ex 1 - Carregar Imagem

[Image,ColorMap] = imread('Parede_8bit.bmp');
colormap(ColorMap);
image(Image);

%%Ex 2 - Simbolos e frequencia destes
[Symb,Freq] = ImageSymbolsRe(Image);

%%Ex 3
%Note que o número de símbolos é bastante menor que 2 8 = 256, pelo que, logo à
%partida, poder-se-ia comprimi substancialmente a imagem reduzindo o número de bits.
%Representando cada símbolo pelo índice correspondente do vetor Symb, e usando o
%menor número de bits possível para representar esses índices, qual seria o tamanho do
%ficheiro que conteria toda a informação da imagem?

%length(Symb) = 35 -> Temos 35 simbolos diferentes (Indices 1-35 / 0-34)
%Logo precisamos de representar  gama 0-34 (# total de indices) -> 2^5 = 32 == 6 bits p/ indice

%Se representarmos cada simbolo com 6 bits em vez de 8 (como estamos a fazer)
%Ganhariamos:
% N * M * (8-6) bits !

%Tamanho final = Tamanho com 8 bits - N*M*2
% = N*M*8 - N*M*2 = N*M*(8-2) = N*M*6 bits de tamanho