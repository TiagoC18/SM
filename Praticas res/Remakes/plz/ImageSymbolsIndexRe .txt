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
## @deftypefn {} {@var{retval} =} ImageSymbolsIndex (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: DS <ds@OmenDS>
## Created: 2018-12-16

function [Symb,ImIndex] = ImageSymbolsIndexRe (Image)
  [N,M] = size(Image);
  
  n = 1;
  Symb(n,1) = Image(1,1);
    
  for k = 2 : N
    for j = 1 : M
      if sum(Symb == Image(k,j)) == 0
        n = n+1;
        Symb(n,1) = Image(k,j);
      endif
    endfor
  endfor
  
  ImIndex = uint8(zeros(N,M));
  for n = 1 : length(Symb)
    ImIndex(Image  == Symb(n)) = n;
  endfor
  
endfunction
