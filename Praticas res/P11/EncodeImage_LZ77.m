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
## @deftypefn {} {@var{retval} =} EncodeImage_LZ77 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: DS <ds@OmenDS>
## Created: 2018-12-10

function Stream = EncodeImage_LZ77 (Image, Nw, Mw)
  %Nw -> Numero de simbolos da janela deslizante
  %Mw -> Numero de simbolos da janela de observacao
  
  [Symb,ImIndex] = ImageSymbolsIndex(Image);
  %ImIndex e uma matriz N*M
  %[...1...]
  %[...2...]
  % ........
  %[...n...]
  
  [N,M] = size(Image);
  Buffer = uint8(zeros(1,N*M));
  %Vamos transofmrar a matriz ImIndex num vetor de 1 linha
  %[...1......2.............n...]
  
  for n = 1 : N
    Buffer(1,(1:M) + M*(n-1)) = ImIndex(n,1:M); %Coloca os bytes da matriz ImINdex num vetor (sequencia das linhas da imagem)  
  endfor
    
  Buffer = Buffer';
  Stream(1:Nw,1) = Buffer(1:Nw,1);
  
  %%Inicio do processo de codificacao
  Max_j = N*M;
  k = Nw +1 ; %Apontador de Stream
  j = Nw +1 ; %Apontador de Buffer
  
  h = waitbar(0,'Calculating');
  %%Encontrar SEquencia
  while j <= Max_j  %Percorremos todos os simbolos do buffer (Dimensao da imagem = N*M);
    waitbar(j/Max_j,h);
    %Variaveis de controlo
    FoundFlag = 1;  %Encontrei SEquencia atual
    ObsWndNotOver = 1;  %Ja cheguei ao fim da janela de observacao
    m = 1;  %Dimensao da sequencia da janela de observacao que e encontrada na janela deslizante
    Cur_i = 0;
    while FoundFlag && ObsWndNotOver
      SearchStr = Buffer(j:min([(j+(m-1)) Max_j])); %Sequencia a analisar atualmente
      SlidingWnd = Buffer((j-Nw) : (j-1));  %Atual janela deslizante
      
      i = FindSequenceInWindow(SearchStr',SlidingWnd'); %Vamos ver se temos aquela sequencia na janela deslizante
      
      if i==0 %Nao encontrou sequencia
        FoundFlag = 0;
      else  %Encontrou sequencia
        Cur_i = i;  %Posicao onde comeca a sequencia encontrada
        m = m+1;
        if(m > Mw) || ((j+(m-1)) > Max_j)
          ObsWndNotOver = 0;
          m = Mw;
        endif
      endif
   endwhile
      
   %%Guardar Sequencia
   if m>1 %Se o comprimento da sequencia que encontramos >1 guardamos um par Posicao/Comprimento
     Stream(k,1) = uint8(Cur_i + 128);  %Funciona apenas se nao tivermos mais de 127 simbolos
     k = k+1;
     Stream(k,1) = uint8(m);
     k = k+1;
     j = j+m;
   else %So identificamos 1 char, guardamos o primeiro char e prontos
     Stream(k,1) = SearchStr(1);
     k = k+1;
     j = j+1;
   endif
  endwhile
  
  close(h);
endfunction
