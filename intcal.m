int(x, 4, 9)

%-----
f = x^3 - 2*x +5;
a = int(f, 1, 2)
display('Area: '), disp(double(a));

%-------------
f = x^2*cos(x);
ezplot(f, [-4,9])
a = int(f, -4, 9)
disp('Area: '), disp(double(a));