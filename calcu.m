syms x
limit((x^3 + 5)/(x^4 + 7))
%% 

%-------------------
syms x
f = (3*x + 5)/(x-3);
g = x^2 + 1;
l1 = limit(f, 4)
l2 = limit (g, 4)
lAdd = limit(f + g, 4)
lSub = limit(f - g, 4)
lMult = limit(f*g, 4)
lDiv = limit (f/g, 4)
%% 

%----
syms t
f = 3*t^2 + 2*t^(-2);
diff(f)

%-----
%% 
f = x*exp(-3*x);
diff(f, 2)

%-----

