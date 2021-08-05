T = [100, 150, 200, 250, 300, 400, 500];
u=[2506.7, 2582.8, 2658.1, 2733.7, 2810.4, 2967.9, 3131.6];
n=1; % 1.order polynomial(linear regression)
p=polyfit(u,T,n);
a=p(1)
b=p(2)
x=u;
ymodel=a*x+b;
plot(u,T,'o',u,ymodel)