clear, clc
x=[10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
y=[23, 45, 60, 82, 111, 140, 167, 198, 200, 220];
for n=2:5
p=polyfit(x,y,n);
ymodel=polyval(p,x);
subplot(2,2,n-1)
plot(x,y,'o',x,ymodel)
title(sprintf('Model of order %d', n));
end