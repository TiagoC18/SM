addpath('./../P04/', './../P06');

%% 1)
load('Guitar01.mat'); % retorna:
                      % x   ->  sinal
                      % fa  ->  frequencia de amostragem
sound(x,fa); % tocar o som

%% 2)
[X, f] = Espetro(x,1/fa,0);
% X -> vetor com os coeficientesda DFT de x(T)
% f -> vetor com as frequencias de cada componente de X

%% 3)
F = zeros(size(f));
F( f > 1000 ) = 1;
F( f > 2000 ) = 0;
F( f < -1000 ) = 1;
F( f < -2000 ) = 0;
w = X.*F;
[xfiltrado, t] = Reconstroi(w,f);
%sound(xfiltrado,fa);

%% 4)
delayBase = 0.2*fa;
y = x + 0.5*[zeros(delayBase,1) ; x(1 : (end-delayBase))];
y = y + 0.3*[zeros(2*delayBase,1) ; x(1 : (end-2*delayBase))];
y = y + 0.2*[zeros(3*delayBase,1) ; x(1 : (end-3*delayBase))];
y = y + 0.1*[zeros(4*delayBase,1) ; x(1 : (end-4*delayBase))];
y = y/1.2;
%sound(y,fa);

%% 5)
z = 0.1*tanh(20*x);
%sound(z,fa);

%% 6)
delayBase = 0.2*fa;
z1 = z + 0.5*[zeros(delayBase,1) ; z(1 : (end-delayBase))];
z1 = z1 + 0.3*[zeros(2*delayBase,1) ; z(1 : (end-2*delayBase))];
z1 = z1 + 0.2*[zeros(3*delayBase,1) ; z(1 : (end-3*delayBase))];
z1 = z1 + 0.1*[zeros(4*delayBase,1) ; z(1 : (end-4*delayBase))];
z1 = z1/1.2;
%sound(z1,fa);

%% 7)
fa = fa/2;
delayBase = 0.2*fa;
z2 = z + 0.5*[zeros(delayBase,1) ; z(1 : (end-delayBase))];
z2 = z2 + 0.3*[zeros(2*delayBase,1) ; z(1 : (end-2*delayBase))];
z2 = z2 + 0.2*[zeros(3*delayBase,1) ; z(1 : (end-3*delayBase))];
z2 = z2 + 0.1*[zeros(4*delayBase,1) ; z(1 : (end-4*delayBase))];
z2 = z2/1.2;
sound(z2,fa);