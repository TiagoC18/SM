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
## @deftypefn {} {@var{retval} =} Load8bitStreamRe (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: DS <ds@OmenDS>
## Created: 2018-12-15

function [N,M,Stream] = Load8bitStreamRe (Filename)
  fileId = fopen(Filename, 'rb');
  N = fread(fileId,1,'uint16'); #First byte has N
  M = fread(fileId,1,'uint16'); #Second byte has M
  
  Stream = fread(fileId); #Read all the remaining bytes
  Stream = Stream';
endfunction
