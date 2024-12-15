% Author Name: Joshua Oliveira
% Email: olivei64@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Weather Data Analysis
% Date: October 18, 2024

%WEATHER DATA :)
fid = fopen('weather_data.txt', 'w');
fprintf(fid, 'Date,Temperature,Humidity,Precipitation\n');
fprintf(fid, '2024-09-01,25.5,60,0\n');
fprintf(fid, '2024-09-02,26.0,65,5\n');
fprintf(fid, '2024-09-03,24.5,70,10\n');
fprintf(fid, '2024-09-04,23.0,75,15\n');
fprintf(fid, '2024-09-05,22.5,80,20\n');
fclose(fid);

% WEATHER FACTORS
data = readcell('weather_data.txt', 'Delimiter', ',');
temperature = cell2mat(data(2:end, 2));
humidity = cell2mat(data(2:end, 3));
precipitation = cell2mat(data(2:end, 4));

avg_temp = mean(temperature);
avg_humidity = mean(humidity);
total_precip = sum(precipitation);

% Saving summary to a new file
fid = fopen('weather_summary.txt', 'w');
fprintf(fid, 'Average Temperature: %.2f\n', avg_temp);
fprintf(fid, 'Average Humidity: %.2f\n', avg_humidity);
fprintf(fid, 'Total Precipitation: %.2f\n', total_precip);
fclose(fid);
