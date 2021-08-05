x=0:5;
y=[15, 10, 9, 6, 2, 0];
plot(x,y ,'o')
grid
new_x=3.5;
new_y = interp1(x,y,new_x)