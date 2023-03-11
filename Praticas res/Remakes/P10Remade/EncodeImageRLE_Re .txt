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
## @deftypefn {} {@var{retval} =} EncodeImageRLE_Re (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: DS <ds@OmenDS>
## Created: 2018-12-15

function Stream = EncodeImageRLE_Re (Image)
  #RLE Example: lloolooolrooooofl -> l2o2l1o3l1r1o5f1l1
  
  [N,M] = size(Image);
  
  count = uint8(0); #Number of times a symbol appears consecutively
  
  k = 1;
  Stream(k) = Image(1,1); #First element of Stream = first symbol in image
  
  for n = 1 : N
    for m = 1 : M
      if Image(n,m) == Stream(k)  #If the current symbol is the same as the previous
        count = count+1; #Increment count
        
        if count == 255 #Unfortunately, count can only go from 0-255 (uint8)
          k = k + 1;
          Stream(k) = count;
          
          k = k+1; #So if a symbol appears more than 255 times, we do this: A255A1
          Stream(k) = Image(n,m);
          count = 1;
        end
      else #If we have a new symbol
        k = k+1;
        Stream(k) = count; #Put # of times the symbol appears consecutively on stream
        
        k = k+1; #Put next symbol on stream
        Stream(k) = Image(n,m); #Put next symbol on stream
        count = 1;  #Reset count
      endif
    endfor
  endfor
  
  #And now for the last symbol
  k = k+1; 
  Stream(k) = count;
endfunction
