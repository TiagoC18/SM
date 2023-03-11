[Image,colorMap] = imread('Arca_8bit.bmp');
figure(1)
image(Image);
colormap(colorMap);
Save8BitImage('Arca_8bit.raw',Image);
[N,M,Image2] = Load8BitImage('Arca_8bit.raw');
figure(2)
Image2 = uint8(Image2);
image(Image2);
colormap(colorMap);
Stream = EncodeImage_RLE(Image2)
Save8BitStream('Arca_8bit.str',N,M,Stream);