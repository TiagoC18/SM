%% Ex 1 Parte 2
clear all;
clf;
close;

img = imread("~/Desktop/sm/guioes/P06/Garca.jpg");

%Imagem default
figure(1);
image(img);
title("Imagem Original");
whos img
