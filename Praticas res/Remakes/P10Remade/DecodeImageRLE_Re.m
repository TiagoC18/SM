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
## @deftypefn {} {@var{retval} =} DecodeImageRLE_Re (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: DS <ds@OmenDS>
## Created: 2018-12-15

function Image = DecodeImageRLE_Re (N,M,Stream)
    #RLE Example: lloolooolrooooofl -> l2o2l1o3l1r1o5f1l1
    
  Image = zeros(N,M);
  k = 1;
  kNew = 0;   %Control Variable
  count = 0;
  
  for n = 1 : N
    for m = 1 : M
      if kNew == 0  %We're dealing with a new symbol
        count = Stream(k+1); #Consequents of same symbol
        kNew = 1; #Control Variable
      endif
    
      Image(n,m) = Stream(k);
      count = count-1; #Decrement count
      
      if count == 0 #Means were gonna be moving to a new symbol!
        kNew = 0;
        k = k+2; #Next Symbol
      endif
    endfor
  endfor
endfunction
