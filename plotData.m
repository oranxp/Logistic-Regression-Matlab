function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;


% Find Indices of Positive and Negative Examples
pos = find(y==1); neg = find(y == 0);
% Plot Examples
plot(X(pos, 1), X(pos, 2), 'r+','LineWidth', 2, ...
'MarkerSize', 7);
plot(X(neg, 1), X(neg, 2), 'go', 'MarkerFaceColor', 'r', ...
... %'MarkerSize', 7);
    'LineWidth',1,...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor', 'g', ...[.49 1 .63],...
    'MarkerSize',7);






% =========================================================================



hold off;

end
