[Image,ColorMap] = imread('Parede_8bit.bmp');
colormap(ColorMap);
image(Image);

Stream = EncodeImage_LZ77(Image,127,30);

%%Buffer -> 1Mb
%%Stream -> 332 kB