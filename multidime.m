m = randn(4, 4, 24); 
m
size(m)

M = cell(8,1);
for n = 1:8
M{n} = randn(n);
end
M

M = cell(8,1);
for n = 1:8
   M{n} = magic(n);
end
M