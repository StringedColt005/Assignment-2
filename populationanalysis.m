% Author Name: Joshua Oliveira
% Email: olivei64@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Population Analysis
% Date: October 18, 2024

%Population Array
population = [5000, 5200, 5350, 5600, 5800];

%Establishing the Growth Rate
growth_rate = (population(2:end) - population(1:end-1)) ./ population(1:end-1);

%Setting Population Data
pop_data = [population; [0, growth_rate]];

%Printing Population
fprintf('Year\tPopulation\tGrowth Rate\n');
for i = 2:length(population)
    fprintf('%d\t%d\t%.2f%%\n', 2018 + i, population(i), growth_rate(i-1) * 100);
end
