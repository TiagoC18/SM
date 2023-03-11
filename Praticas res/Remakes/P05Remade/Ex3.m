%%Ex 3.
clear all;
clf;
close;

img = imread("~/Desktop/sm/guioes/P05/Parede.jpg");

%Imagem default
figure(1);
image(img);
title("Imagem Original");
whos img

%Um pixel a cada 2
delta = 2;
img2 = img(1:delta:end,1:delta:end,:);

figure(2);
image(img2);
title("Imagem Metade dos Pixels");
whos img2

%Um pixel a cada 4
delta = 4;
img4 = img(1:delta:end,1:delta:end,:);

figure(3);
image(img4);
title("Imagem 1/4 dos Pixels");
whos img4

%Um pixel a cada 8
delta = 8;
img8 = img(1:delta:end,1:delta:end,:);

figure(4)
image(img8);
title("Imagem 1/8 dos Pixels");
whos img8

%Um pixel a cada 16
delta = 16;
img16 = img(1:delta:end,1:delta:end,:);

figure(5);
image(img16);
title("Imagem 1/16 dos Pixels");
whos img16

