%Guiao 5 Exercicio 2
%%a
figure(1);
Ta = 0.2;
t = 0:Ta:5;
x =sin(2*pi*t)';
ReconstroiSinal(x, Ta)

%%b
figure(2);
Ta = 0.04;
t = 0:Ta:5;
y= sin(10*pi*t)+cos(12*pi*t)+cos(14*pi*t-pi/4);
ReconstroiSinal(y,Ta)
