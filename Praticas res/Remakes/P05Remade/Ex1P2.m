%Ex 1 Parte 2

%% a)
Ta = 0.05;
x1 = [0:Ta:5-Ta];
x2 = [0:Ta:5-Ta];
y = zeros(length(x2),length(x1));

for n=1 : length(x1)
  y(:,n) = cos(2*pi*(x1(n)-2*x2))';
endfor

figure(1);

subplot(2,2,[1,2]);
mesh(y);
view(2);
axis equal;

subplot(2,2,[3,4]);
SpectrumSM2Remade(y,Ta);
view(2)

%% b)

Ta = 0.05;
x1 = [-5:Ta:5-Ta];
x2 = [-5:Ta:5-Ta];
z = zeros(length(x2),length(x1));

for n=1 : length(x1)
  z(:,n) = cos(2*pi*sqrt(x1(n)^2+x2.^2))';
endfor

figure(2);

subplot(2,2,[1,2]);
mesh(z);
view(2);
axis equal;

subplot(2,2,[3,4]);
SpectrumSM2Remade(z,Ta);