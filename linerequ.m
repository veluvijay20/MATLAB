clear all
A = [3 -9; 2 4];
b = [-42; 2];
% three methods
x = inv(A)*b       % good
x = A\b            % better
x = linsolve(A,b)  % best