clc;
clear all;
close all;
for k = 1:4
d = rand(1,20);
subplot(2,2,k)
stem(d)
end
subplot(2, 2, 4, 'replace')
%% 

%-------------

close all;
subplot(2,2,1)
x1 = linspace(0,20);
y1 = cos(x1);
plot(x1,y1)
title('Subplot 1: cos(x1)')
subplot(2,2,2)
y2 = cos (2*x1);
plot(x1,y2)
title('Subplot 2: cos (2x1)')
subplot(2,2,3)
y3 = cos (3*x1);
plot(x1,y3)
title('Subplot 3: cos (3x1)')
subplot(2,2,4)
y4 = cos(4*x1);
plot(x1,y4)
title('Subplot 4: cos(4x1)')

%% 

%--------------
a1 = subplot( 1, 3, 1 );
text( 0.5, 0.5, '2019', 'fontsize', 20 );
text( 0.3, 0.3, 'Vijay', 'fontsize', 12 );
a2 = subplot( 1, 3, 2 );
text( 0.5, 0.5, '2020', 'fontsize',20 );
a3 = subplot( 1, 3, 3 );
text( 0.5, 0.5, '2021', 'fontsize', 20 );
