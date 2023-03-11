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
## @deftypefn {} {@var{retval} =} GeraMensagem (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: DS <ds@OmenDS>
## Created: 2018-11-26

function [NumBits,NumBPS] = GeraMensagem (f,CompMesg,nBits)
  %%My code: (Nao funciona para mensagens pequenas!!)
  
  %ocorrencias = (f.*CompMesg)';
  
  %NumBits  = nBits * ocorrencias;
  %NumBPS = NumBits/CompMesg;
  
  %%Teachers code: (Funciona sempre!!)
  
  pd = makedist('Multinomial','probabilities',f/sum(f));
  Mesg = random(pd,CompMesg,1);
  N = length(f);
  NumBits = 0;
  for n = 1 : N
    NumBits = NumBits + sum(Mesg == n) * nBits(n);
  endfor
  NumBPS = NumBits/CompMesg;

  
endfunction
