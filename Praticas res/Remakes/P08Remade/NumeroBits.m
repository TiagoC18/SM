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
## @deftypefn {} {@var{retval} =} NumeroBits (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: DS <ds@OmenDS>
## Created: 2018-11-24

function NumBits = NumeroBits (texto)
  N = length(texto);
  
  [symb,freq] = Alfabeto2(texto);
  
  [newFreq,i] = sort(freq,'descend'); #Order freq from highest to lowest
  newSymb = symb(i);  #Allign symb with the corresponding freq
  
  NumBits = 0;
  
  for k=1 : length(newSymb)
    occurances = newFreq(k)*N/100; #Occurances of symbol whose frequency is in newFreq(k)
    NumBits += k * occurances; #Symbol of index k is made out of k bits
  endfor
endfunction
