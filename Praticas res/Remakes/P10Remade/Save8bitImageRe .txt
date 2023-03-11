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
## @deftypefn {} {@var{retval} =} Save8bitImageRe (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: DS <ds@OmenDS>
## Created: 2018-12-15

function Save8bitImageRe (Filename,Image)
    fileId = fopen(Filename, 'wb');
    [n,m] = size(Image);
    N = uint16(n);  #First 2 bytes save the value of N in uint16
    fwrite(fileId,N,'uint16');

    M = uint16(m); #Second 2 bytes save the value of M in uint16
    fwrite(fileId,M,'uint16');
  
    fwrite(fileId,Image,'uint8'); #Consequent bytes save the image itself (NxM pixels)
    
    fclose(fileId);
endfunction
