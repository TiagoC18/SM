%%Ex 2 and 3 - Saving and loading the image

[Image,ColorMap] = imread('Parede_8bit.bmp');
figure(1)
colormap(ColorMap);
image(Image);

Save8bitImageRe('Parede.raw',Image);

[N,M,Image2] = Load8bitImageRe('Parede.raw');
figure(2);
Image2 = uint8(Image2);
colormap(ColorMap);
image(Image2);
