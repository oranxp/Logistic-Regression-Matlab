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
## @deftypefn {} {@var{retval} =} computeRegularizedCostAndGradient (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Oran Ofzer, ID 205633423
## Created: 2020-05-24

function [J, Gradient] = computeRegularizedCostAndGradient(D, Y, Hypothesis, lambda)
  m = size(D);
  Errors = zeros(size(Y,1),1);
  Gradient = zeros(1,size(D,2));
  jSum = 0;
  epsilon = 0.0001;
  thetaSum = 0;
  gThetaSum = 0;
  for i=1:m
    value = predictValue(D(i,:),Hypothesis);
    if (value == 0)
      jSum = jSum + (-Y(i) * log(value+epsilon))-((1-Y(i))*log(1-value));
    else if (value == 1) 
      jSum = jSum + (-Y(i) * log(value))-((1-Y(i))*log(1-(value-epsilon)));
    else
       jSum = jSum + (-Y(i) * log(value))-((1-Y(i))*log(1-value));
    end
  end
    for j=1:size(D,2)
      error = value - Y(i);
      Gradient(j) = Gradient(j) + (error*D(i,j));
    end
  end
  J = jSum/size(D,1);
  Gradient = Gradient/size(D,1);
  
  
  % Sum thetas for regularization of cost
  for n=2:size(D,2)
    thetaSum = thetaSum + Hypothesis(n)^2;
  endfor
  % Add to calculated cost (will do nothing if lambda = 0)
  J = J + (lambda/(2*size(Y,1)))*thetaSum;
  
  % sum thetas for reguralized Gradient
  for m=2:size(D,2)
    gThetaSum = gThetaSum + Hypothesis(m);
  endfor
  % Add to calculated Gradient (
  Gradient = Gradient + (lambda/size(Y,1))*gThetaSum;
  
endfunction
