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
## @deftypefn {} {@var{retval} =} Alfabeto2 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: DS <ds@OmenDS>
## Created: 2018-11-24

function [Simbolos,Frequencia] = Alfabeto2 (texto)
  N = length(texto);
  n = 1;
  
  Simbolos(n,1) = texto(1); #Atribuir ao primeiro elemento de SImbolos o primeiro simbolo em texto
  Frequencia(n,1) = sum(texto == Simbolos(n))/N * 100; #Total de vezes que o caracter que acabamos de adicionar aparece em texto

  for k=2 : N
    if sum(Simbolos == texto(k)) == 0 #Simbolos == texto(k) da nos um array com valor 1 nas posicoes de Simbolos que tenham valor igual a texto(k) ; SUm da nos o total, se for = 0, e pq texto(k) ainda nao existe em SImbolos
      n = n+1;
      Simbolos(n,1) = texto(k);
      Frequencia(n,1) = sum(texto == Simbolos(n))/N * 100;
    endif
  endfor

endfunction
