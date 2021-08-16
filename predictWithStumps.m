function [Prediction, Error] = predictWithStumps(D, Y)
  %% Stumps are pre-defined for each data set and will not work on any dataSet.
  %% Outer loop will iterate over feature/stumps(1..n), inner loop will iterate over data samples.
  %% Error will be a stumps-sized vector to see which stump had lowest error.
  %% Stumps: 
  %% 1) Email Contains Pictures? (1 Means Yes and will be classified as spam, 0 means no).
  %% 2) Number of recipients > 100? (Over 100 means Spam, under - not a spam.)
  %% 3) Mail contains "You won!" means mail will be classified as spam.
  
  
endfunction