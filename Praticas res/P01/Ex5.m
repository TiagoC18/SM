%Ex 5.

Ta = 1/25;
t = [0:Ta:5]';
x1 = [-5:Ta:5]';
x2 = [-5:Ta:5]';
N = length(t);
N1 = length(x1);
r = zeros(N1,N1);

for n=1:N;
  tic
  for i=1:N1
    r(i,:) = 2*sin(2*pi*sqrt(x1(i)^2+x2.^2)-2*pi*t(n));
  endfor
  mesh(x1,x2,r);
  view(2);
  drawnow();
  pause(Ta-toc);
endfor

