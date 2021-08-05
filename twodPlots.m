
%2D line plot for y=sin(x) where x ranges from 0 to 2*pi
x=0:pi/100:2*pi
y=sin(x)
plot(x,y)


% To create the area plot for the given equation Sin(t)Cos(2t). 

% Enter the value of range of variable 't'.
t=[0:0.2:20];
% Put the given equation
a=[sin(t).*cos(2.*t)];
area(a)
title('Area Plot')

%--------------
% Consisder the variable range of 'x' and 'y',
x=[3 1 6 7 10 9 11 13 15 17];
y=[14 7 23 11 8 16 9 3 23 17];
stem(x,y,'r')
title('Stem Plot')
xlabel('X axis')
ylabel('Y axis')

%-----

x=[1 3 5 7 10 13 15];
y=[0 0.5 1 1.5 3 2 2];
bar(x,y)
title('Bar Plot')
xlabel('X axis')
ylabel('y axis')


%-------------
x=[1 3 5 7 10 13 15];
y=[0 0.5 1 1.5 3 2 2];
barh(x,y)
title('Barh Plot')
xlabel('X axis')
ylabel('y axis')


%---------------
x=[5 10 15 20 25 30 35 40];
y=[0.1 3 4 3.5 5 6.6 7 8];
errorbar(x,y,'m')
title('Errorbar Plot')
xlabel('X axis')
ylabel('Y axis')


%------
x=[0 1 2 4 5 7 8];
y=[1 3 4 6 8 12 13];
stairs(x,y,'k')
title('Stairs Plot')
xlabel('X axis')
ylabel('Y axis')


%----

x=[10 20 25 40 75 80 90];
pie(x)
title('Pie Plot')

%-----

theta=[-pi/2 pi 2*pi];
radious=[2 6 9];
polar(theta,radius,'r--')
title('Polar Plot')


%------
theta=[-pi pi/2 pi];
r=[2 6 9];
compass(theta,r,'b--')
title('Compass Plot')

%------
x=[1 2 3 5 7 9 11 13 15];
y=[1.2 3 4 2.5 3 5.5 4 6 7];
scatter(x,y,'g')
title('Scatter Plot')
xlabel('X axis')
ylabel('Y axis')


