%%Ex 1

%% a)
F = [14 64 5 10 7]'/100;
H = - F' * log2(F)

%% b)
%
%               100,* 
%        36,*              64,B
%   14,A        22,*
%           10,D     12,* 
%                 5,C    7,E

% A - 00
% B - 1
% C - 0110
% D - 010
% E - 0111

%% c)

F = F'*1000;
totalBits = F(1)*2 + F(2)*1 + F(3)*4 + F(4)*3 + F(5)*4;
totalSimbolos = 1000;
media = totalBits/totalSimbolos