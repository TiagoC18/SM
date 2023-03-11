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
## @deftypefn {} {@var{retval} =} Ex3F (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: DS <ds@OmenDS>
## Created: 2018-10-08

function potencia = Ex3F (x,Ta,T)
 % N = T/Ta;
 % soma = 0;
 
 % for n=1:N
 %   soma += (x(n))^2;
 % endfor
 
 % potencia = Ta/T * soma;
 
 %OR:
 
 N = length(x);
 potencia = (1/N) * x' * x;
 
 %OR:

 %potencia = (Ta/T) * x' * x;  %Assumindo que x contem apenas um periodo do sinal
  
endfunction
