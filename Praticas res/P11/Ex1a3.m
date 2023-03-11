%%Ex 1

[Image,ColorMap] = imread('Parede_8bit.bmp');
colormap(ColorMap);
image(Image);

[Symb,Freq] = ImageSymbols(Image);

%%Ex 3
% Temos 35 simbolos diferentes, logo no maximo so precisamos de representar a 
%gama 0 a 35, para o qual so precisariamos de 6 bits para representar, ao inves 
%de usar os 8 bits para representar os valores de 0 a 255.

% Ganhariamos: N*M * 2 bits de tamanho!