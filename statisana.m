% clear session and screen
 clear all; clc
 % create a new column vector with 10 elements
 %  with random numbers between 0 and 100
 y = rand(10,1) * 100;
 disp(y)
 % basic statistics
 mean(y)
 max(y)
 min(y)
 std(y)
 % define a new anonymous function
 avg = @(x) sum(x)/length(x)
 % check new function
 disp('Average with avg function: ')
 avg(y)
 disp('Average with mean function: ')
 mean(y)
 % number of values below 50
 % boolean vector of 0 or 1 values
 disp(y<50)
 % display result
 disp('Number of values below 50: ')
 z = y<50;
 disp(sum(z))
