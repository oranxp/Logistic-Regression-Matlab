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
## @deftypefn {} {@var{retval} =} gradientDescent (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Oran Ofzer, Id 205633423
## Created: 2020-05-02

function  [FinalHypothesis, Costs] = gradientDescent(filename, alpha, max_iter,  threshold)
  if ~exist('alpha','var') % start initializing if not exist
    alpha = 0.001;
  endif
  if ~exist('max_iter','var')
    max_iter = 1000;
  endif
  if ~exist('threshold','var')
    threshold = 0.0001;
  endif % end initializing part
  [D Y] = loadData(filename); % Create matrix D and label column Y
  D = addOnesColumn(D);
  Hypothesis = [-10 1 -1];
  Costs = zeros(1,max_iter);
  figure; hold on
  for iter = 1 : max_iter 
    [cost grad] = computeCostAndGradient(D,Y,Hypothesis);
    Costs(iter) = cost;
    Gradient = grad;
    Hypothesis = updateHypothsis(Hypothesis, alpha, Gradient);
    plot(iter,Costs(iter),'o');
    if iter > 1 && (abs(Costs(iter-1) - Costs(iter))) <= threshold
      x = ['Gradient descent terminating after ', num2str(iter), ' iterations. Improvement was ', num2str(Costs(iter-1) - Costs(iter)), ', below threshold: ', num2str(threshold)];
      disp(x); 
      Costs(iter)
      FinalHypothesis = Hypothesis;
      break
    endif
    FinalHypothesis = Hypothesis;
    if iter == max_iter
      x = ['Gradient descent terminating after ', num2str(iter), ' iterations.'];
      disp(x); 
    endif
  endfor
  plotDecisionBoundary(FinalHypothesis,D,Y);
endfunction
