clc,clear all
load perp.dat;
month = perp(:,1);
precip = perp(:,2);
plot(month , perp,'o');  % plot precip vs. month with circles
xlabel('month of the year'); % add axis labels and plot title
ylabel('mean precipitation (inches)');
title('Mean monthly precipitation');
