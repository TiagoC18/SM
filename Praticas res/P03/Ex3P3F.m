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

function [x,t] = Ex3P3F (Ta,f,Np,a,b)
  Ttotal = Np*(1/f); %Numero de periodos * periodo
  t = [0:Ta:Ttotal]';
  
  sumA = 0;
  sumB = 0;
  for k = 1 : length(a)
    sumA += a(k) * cos(2 * pi * k * f * t);
    sumB += b(k) * sin(2 * pi * k * f * t);
  endfor
  
  x = sumA + sumB;
endfunction
