## Copyright (C) 2018 DS
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} ReconstroiSInalRemade (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: DS <ds@OmenDS>
## Created: 2018-11-10

function ReconstroiSinalRemade (x, Ta) 
  fa = 1/Ta;
  fy = 100*fa;  %sinal reconstruído (que terá que ser, ele também, amostrado) deverá considerar uma frequência de amostragem igual a 100f a
  
  Ty = 1/fy;  %Periodo do Sinal Reconstruido
  
  N = length(x);
  y = zeros(100*N,1); %Sinal Reconstruido
  
  t = [0:(length(y)-1)]'*Ty;  %Pq q: t=[0:Ty:length(y)-Ty] Nao funciona?!?!??
  
  for n=1 : N
    y = y + x(n)*sinc(fa*(t-(n-1)*Ta)); %SinCardinal
  endfor
  
  plot(t,y,[0:(N-1)]'*Ta,x,'.');  %Aquele [0:N-1] e x sao usados para alinhar o sinal reconstruido com o inicial
  xlabel('Tempo');
  ylabel('Sinal');
  grid;
  
endfunction
