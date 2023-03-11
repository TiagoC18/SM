[Image,ColorMap] = imread('Parede_8bit.bmp');
figure(1);
colormap(ColorMap);
image(Image);

%%Ex 6

[N,M,Nw,Mw,Symb,Stream] = LoadLZ77ImageRe('Parede_8bitLZ77.raw');

%%Ex 7
Image2 = DecodeImageLZ77_Re(N,M,Nw,Mw,Symb,Stream);
figure(2);
colormap(ColorMap);
image(Image2);