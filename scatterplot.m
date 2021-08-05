A = [1, 2, 3, 4];
B = [5, 6, 7, 8];

% Create scatter plot attributes
marker_size = 75;
color = 'black';

% Scatter plot with axis and title labeling
scatter(A, B, ...
        marker_size, color, 'filled');
xlabel('A');
ylabel('B');
title('A simple scatterplot');
