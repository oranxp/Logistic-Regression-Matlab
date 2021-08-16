function [D Y] = loadData(filename)
  A = load(filename);
  D = A(:,1:end-1); % Extract all columns (Features) from matrix A to matrix D.
  Y = A(:,end); % Extract Labels column to matrix Y. 
  x = ['read ' ,num2str(size(A,1)), ' rows'];
  disp(x);
  x1 = D(:,1);
  x2 = D(:,2);
endfunction