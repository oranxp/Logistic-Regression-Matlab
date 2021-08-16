## Copyright (C) 2020 PC
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
## @deftypefn {} {@var{retval} =} sigmoid (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Oran Ofzer, 205633423
## Created: 2020-05-20

function [G] = sigmoid(z);
  e = exp(1);
  G = zeros(size(z));
  for i = 1:size(G,1)
    G(i) =  1/(1 + e^(-z(i)));
  endfor  
endfunction
