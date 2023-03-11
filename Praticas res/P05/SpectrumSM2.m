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
## @deftypefn {} {@var{retval} =} SpectrumSM2 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: DS <ds@OmenDS>
## Created: 2018-10-29

function SpectrumSM2 (Q,step)
  
  [M,N] = size(Q);
  
  Qfreq = fftshift(fft2(Q))/M/N;
  QMag = abs(Qfreq);
  
  T1 = step * N;
  T2 = step * M;
  
  f1 = [0:(N-1)]' * (1/T1) - 1/(2*step);
  f2 = [0:(M-1)]' * (1/T2) - 1/(2*step);

  mesh(f1,f2,QMag);
  axis equal;
  
endfunction