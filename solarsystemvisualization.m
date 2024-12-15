% Author Name: Joshua Oliveira
% Email: olivei64@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Solar System Visualization
% Date: October 18, 2024

% Setting up the planetsr
planet_distances = [0.39, 0.72, 1.00, 1.52, 5.20, 9.58, 19.18, 30.07]; % AU
planet_sizes = [0.38, 0.95, 1.00, 0.53, 11.21, 9.45, 4.00, 3.88]; % Relative to Earth

% Creating the figure
figure;

subplot(1, 2, 1);
scatter(planet_distances, planet_sizes * 10, 100, 'filled');
title('Planet Distances vs. Sizes');
xlabel('Distance from Sun (AU)');
ylabel('Relative Size (scaled)');
legend({'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune'});

subplot(1, 2, 2);
bar(planet_distances);
title('Planet Distances from the Sun');
xlabel('Planet');
ylabel('Distance (AU)');
xticks(1:8);
xticklabels({'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune'});


saveas(gcf, 'solar_system_visualization.png');
