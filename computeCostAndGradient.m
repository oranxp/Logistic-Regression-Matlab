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
## @deftypefn {} {@var{retval} =} computeCostAndGradient (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Oran Ofzer, ID 205633423
## Created: 2020-05-21

function [J, Gradient] = computeCostAndGradient(D, Y, Hypothesis)
  %% call computeReguralized with lambda initialized to 0;
  [J, Gradient] = computeRegularizedCostAndGradient(D, Y, Hypothesis, 0);
endfunction
