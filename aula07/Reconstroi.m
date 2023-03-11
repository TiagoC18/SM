function [x,t] = Reconstroi (X, f)
 N = length(X);
  X = ifftshift(X);
  x = ifft(X)*N;
  
  fa = f(end)*2;
  Ta = 1/fa;
  
  N = length(x);
  t = [0:(N-1)]'*Ta;
end