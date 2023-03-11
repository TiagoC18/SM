%Ex 4 e 7 - Codificacao RLE

[Image,ColorMap] = imread('Parede_8bit.bmp');
figure(1)
colormap(ColorMap);
image(Image);

%Ex 4
Stream = EncodeImageRLE_Re(Image);

#Ex 5
[N,M] = size(Image);
Save8bitStreamRe('Parede_Stream.raw',N,M,Stream);

#Ex 6
[N,M,StreamRemade] = Load8bitStreamRe('Parede_Stream.raw');

#Ex 7
Image2 = DecodeImageRLE_Re(N,M,StreamRemade);
Image2 = uint8(Image2);

figure(2)
colormap(ColorMap);
image(Image2);