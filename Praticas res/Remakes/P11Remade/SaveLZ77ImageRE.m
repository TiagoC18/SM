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
## @deftypefn {} {@var{retval} =} SaveLZ77ImageRE (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: DS <ds@OmenDS>
## Created: 2018-12-16

function SaveLZ77ImageRE (FileName,N,M,Nw,Mw,Symb,Stream)
  fileId = fopen(FileName, 'wb');
    
  fwrite(fileId,N,'uint16'); #First 2 bytes save the value of N in uint16
  
  fwrite(fileId,M,'uint16'); #Second 2 bytes save the value of M in uint16
  
  fwrite(fileId,Nw,'uint8'); #Third byte stores the size of the sliding window
  
  fwrite(fileId,Mw,'uint8'); #Fourth byte stores the size of the sliding window

  fwrite(fileId, Symb, 'uint8');  #Next bytes store the symbols (one byte per symbol)
  
  fwrite(fileId, 256, 'uint16');  #Next bytes store the symbols (one byte per symbol)

  fwrite(fileId, Stream, 'uint8');  #Next bytes store the Encoded Message (one byte per symbol)

  fclose(fileId);
endfunction
