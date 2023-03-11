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
## @deftypefn {} {@var{retval} =} ImageSymbolsRe (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: DS <ds@OmenDS>
## Created: 2018-12-16

function [Symb,Freq] = ImageSymbolsRe (Image)
  [N,M] = size(Image); 
  i = 1;
  
  Symb(i) = Image(1,1);
  
  Freq(i) = sum(sum(Image == Symb(i)))/(N*M) * 100; #Add the number of times that symbol appears

  for n = 2 : N
    for m = 1 : M
      if sum(Symb == Image(n,m)) == 0 #If its a new symbol
        i = i+1;
        Symb(i) = Image(n,m);
        Freq(i) = sum(sum(Image == Symb(i)))/(N*M) * 100;
      endif
    endfor
  endfor

endfunction
