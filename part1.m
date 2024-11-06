clc;clear ;close all;
% Load data from CSV file
dataTable = readtable('C:\Users\M.R\Documents\MATLAB\project\ml\data.csv');

% Extract price and distance data
price = dataTable.Price;
distance = dataTable.Mileage;

% Perform linear regression
mdl = fitlm(price, distance);

% Display the regression equation
disp('Linear Regression Equation:')
disp(['Distance = ' num2str(mdl.Coefficients.Estimate(1)) ' + ' num2str(mdl.Coefficients.Estimate(2)) ' * Price']);

% Calculate R-squared (𝑅²) score
r_squared = mdl.Rsquared.Ordinary;
disp(['R-squared (𝑅²) Score: ' num2str(r_squared)]);

% Check if 𝑅² score meets the correlation criterion (𝑅² ≥ 0.8)
if r_squared >= 0.8
    disp('The linear regression equation is suitable for the data (correlation ≥ 0.8).');
else
    disp('The linear regression equation may not be suitable for the data (correlation < 0.8).');
end

% Plot the data
scatter(price, distance, 'o', 'DisplayName', 'Data');
hold on;

% Plot the regression line
x_range = linspace(min(price), max(price), 100);
y_pred = predict(mdl, x_range');
plot(x_range, y_pred, 'r-', 'LineWidth', 2, 'DisplayName', 'Linear Regression');

% Add labels and legend
xlabel('Price');
ylabel('Distance');
legend('Location', 'best');
title('Linear Regression: Distance vs Price');

% Display the plot
hold off;




%part 2
