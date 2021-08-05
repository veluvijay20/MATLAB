% values = {1, 2, 3 ; 4, 5, "x" ; 7, 8, 9};
% headers = {"First","Second","Third"};
% xlswrite("myExample.xlsx",[headers; values]);
% 
% filename = "myExample.xlsx";
% A = xlsread(filename)

m = [3 6 9 12 15; 5 10 15 20 25; 7 14 21 28 35; 11 22 33 44 55];

csvwrite('csvlist.dat',m)
type csvlist.dat
m = csvread('csvlist.dat', 2, 0)




