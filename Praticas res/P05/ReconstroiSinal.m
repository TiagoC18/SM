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
## @deftypefn {} {@var{retval} =} ReconstroiSinal (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: DS <ds@OmenDS>
## Created: 2018-10-29

function ReconstroiSinal (x,Ta)
  
  N = length(x);
  y = zeros(100*N,1); %SInal reconstruido
  
  fa = 1/Ta;
  fy = 100 * fa;  %Frequencia de amostragem de Y
  
  Ty = 1/fy;
  
  t = [0:(length(y)-1)]'*Ty;  %Vetor de instantes de tempo na nova discretizacao
  
  for n=1 : N
    y = y + x(n)*sinc(fa*(t-(n-1)*Ta));
  endfor
  
  plot(t,y,[0:(N-1)]'*Ta,x,'.');
  xlabel('Tempo');
  ylabel('Sinal');
  grid;
endfunction
