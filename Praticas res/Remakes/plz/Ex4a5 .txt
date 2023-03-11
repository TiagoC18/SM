[Image,ColorMap] = imread('Parede_8bit.bmp');
colormap(ColorMap);
image(Image);

%%Ex 4 - LZ77 Encoding
Stream = EncodeImageLZ77_Re(Image,127,30);

%%Ex 5 - Save on file
[N,M] = size(Image);
[Symb,Freq] = ImageSymbolsRe(Image);

SaveLZ77ImageRE('Parede_8bitLZ77.raw',N,M,127,30,Symb,Stream);