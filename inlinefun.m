c = inline('sqrt(a.^2+b.^2-2*a.*b.*cos(theta))', 'a', 'b', 'theta')
SideThree = c(2, 3, pi/6)



sqr = @(x) x.^2;
a = sqr(5)

fxy = @(x,y) x^2 + y^2;
b=fxy(2,3)

