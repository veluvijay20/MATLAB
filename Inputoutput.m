clear

a = 0.1;
b = 1;
x = 0.6;
y = a*exp(b*x)

%using prompt Integer
prompt = 'Enter a value?: ';
x = input(prompt)
y = x*10

%using prompt String
prompt = 'Do you want more? Y/N [Y]: ';
str = input(prompt,'s');
if isempty(str)
    str = 'Y';
end

% Input/output from MATLAB terminal window

% datain = input('input [a,b,c]: ');
% a = datain(1);
% b = datain(2);
% x = datain(3);
% y = a*exp(b*x)


% output a string
display("Welcome to Matlab")
  
% output a variable
%var = 10;
display(y)
