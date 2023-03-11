%%Ex 8

[Image,ColorMap] = imread('Arca_8bit.bmp');
figure(1)
colormap(ColorMap);
image(Image);

%Ex 4
Stream = EncodeImageRLE_Re(Image);

#Ex 5
[N,M] = size(Image);
Save8bitStreamRe('Arca_8bit.raw',N,M,Stream);

#Ex 6
[N,M,StreamRemade] = Load8bitStreamRe('Arca_8bit.raw');

#Ex 7
Image2 = DecodeImageRLE_Re(N,M,StreamRemade);
Image2 = uint8(Image2);

figure(2)
colormap(ColorMap);
image(Image2);