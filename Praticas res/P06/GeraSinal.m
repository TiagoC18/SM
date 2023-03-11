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
## @deftypefn {} {@var{retval} =} GeraSinal (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: DS <ds@OmenDS>
## Created: 2018-11-10

function [x,t] = GeraSinal (N, Ta)
  n=N*Ta; %%# of periods
  t = [0:Ta:n-Ta];

  dist = randn(2,N).*pi;
  
  fi_1 = zeros(1,length(t));
  fi_2 = zeros(1,length(t));
  
  fi_1(1) = dist(1,1);
  fi_2(1) = dist(2,1);
  
  for c=2:length(t)       %tecnica do trapezio (no clue what this is)
      fi_1(c) = fi_1(c-1) + (dist(1,c)+dist(1,c-1))/2*Ta;
      fi_2(c) = fi_2(c-1) + (dist(2,c)+dist(2,c-1))/2*Ta;
  end
  
  r = 0.5*sin(20*pi*t+10*fi_1) + 0.5*sin(24*pi*t+10*fi_2);
  
  x = sin(2*pi*t) + r;
  
  plot(t,x);
endfunction
