[x,y] = meshgrid(-10:0.1:10); 
t = sqrt(x.^2+y.^2);
z =(10*sin(t));
mesh(x,y,z)


%% 
[x,y] = peaks(30);
z = exp(-0.9*(x.^2+0.5*(x-y).^2));
surf(x,y,z);
xlabel('\bf X axis');
ylabel('\bf Y axis');
zlabel('\bf Z axis');
title('\bf Surface Plot')
colorbar

%---------------
%% 

% enter the inputs of x and y
[x,y]= meshgrid(0:0.1:5);
% enter the expression using
% x and y 
z= sin(x).*cos(y);
% use contour() for plotting 
contour3(z,50)

%----------------
%% 

% give the input value for x,
% y and z
[x,y,z]= meshgrid(0:0.1:5);
  
% using x, y and z give the 
% values for u,v and w 
u= sin(x).*cos(y);
v= sin(x).*cos(y);
w= sin(x).*cos(y);
  
%use quiver3() for 3d plotting
quiver3(x,y,z,u,v,w);
%% 

%---------------
[x,y,z] = meshgrid(-10:.2:10);
v = [exp((x.^2)-(y.^3)-(z.^5))];
xslice = 0.1; 
yslice = 5;
zslice = 0;
slice(x,y,z,v,xslice,yslice,zslice)
colorbar
title('\bf Slice Plot')
