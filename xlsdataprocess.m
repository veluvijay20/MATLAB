clc ;
data1= [3 54  47 ; 4 33 22; 56 7 42 ; 43 7 1]
data2 = [56 4 2 ; 5 4 2 ; 67 4 1 ; 1 01 1]
xlswrite("file1.xlsx" , [data1 ; data2])
xlsread("file1.xlsx")