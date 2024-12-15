% Author Name: Joshua Oliveira
% Email: olivei64@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Stock Market Analysis
% Date: October 18, 2024

% Prices and print statement
fid = fopen('stock_data.txt', 'w');
prices = randi([100, 200], 30, 1); % Generating random prices
fprintf(fid, '%d\n', prices);
fclose(fid);

% Stock Market $$$:)
stock_data = readmatrix('stock_data.txt');
avg_price = mean(stock_data);
highest_price = max(stock_data);
lowest_price = min(stock_data);
increased_days = sum(diff(stock_data) > 0);

% Print summary
fprintf('Average Closing Price: %.2f\n', avg_price);
fprintf('Highest Closing Price: %.2f\n', highest_price);
fprintf('Lowest Closing Price: %.2f\n', lowest_price);
fprintf('Days Price Increased: %d\n', increased_days);

% Plotting
figure;
plot(stock_data, '-o');
hold on;
yline(avg_price, 'r--', 'Average Price');
yline(highest_price, 'g--', 'Highest Price');
yline(lowest_price, 'b--', 'Lowest Price');
title('Stock Closing Prices');
xlabel('Days');
ylabel('Price');
legend('Closing Prices', 'Average Price', 'Highest Price', 'Lowest Price');
hold off;

% Save plot
saveas(gcf, 'stock_analysis.png');

% Summary file
fid = fopen('stock_summary.txt', 'w');
fprintf(fid, 'Average Closing Price: %.2f\n', avg_price);
fprintf(fid, 'Highest Closing Price: %.2f\n', highest_price);
fprintf(fid, 'Lowest Closing Price: %.2f\n', lowest_price);
fprintf(fid, 'Days Price Increased: %d\n', increased_days);
fclose(fid);
