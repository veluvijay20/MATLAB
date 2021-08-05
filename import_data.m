% clear all variables; close all plots; clear command window
clear all; close all; clc

% load the data file
load data_file.txt

% create time vector from imported data
time = data_file(:,1);
% parse good sensor data from imported data
sensors = data_file(:,2:5);

% display the first 6 sensor rows
disp(sensors(1:6,:))

% adjust time to start at zero by subtracting the
%  first element in the time vector
time = time - time(1,1);

% calculate the average of the sensor readings
avg = mean(sensors,2);

% export data
my_data = [time sensors avg];
% write a space delimited text file
save -ascii export_matlab.txt my_data
% write a comma delimited text file
csvwrite('export_from_matlab.csv',my_data)

% generate a figure
h=figure(1)
plot(time,sensors(:,2),'r-')
hold on
plot(time,avg,'b.')
legend('Sensor_2','Average')
xlabel('Time (sec)')
ylabel('Sensor Values')
saveas(h,'my_MATLAB_plot','png')