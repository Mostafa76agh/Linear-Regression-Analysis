% Load data from CSV file
dataTable = readtable('C:\Users\M.R\Documents\MATLAB\project\ml\data.csv');

% Extract features and target variable
features = dataTable{:, [2, 7, 8, 9, 10, 11, 12]}; % Columns: mileage, liter, doors, cruise, sound, leather
distance = dataTable.Mileage; % Assuming 'Mileage' is the target variable

% Perform linear regression
mdl = fitlm(features, distance);

% Display the regression equation
disp('Linear Regression Equation:')
coefficients = mdl.Coefficients.Estimate;
equation = ['Distance = ' num2str(coefficients(1))];
for i = 2:length(coefficients)
    equation = [equation ' + ' num2str(coefficients(i)) ' * Feature' num2str(i-1)];
end
disp(equation);

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
scatter3(features(:, 1), features(:, 2), distance, 'o', 'DisplayName', 'Data');
hold on;

% Create a grid of values for prediction
[x1, x2] = meshgrid(linspace(min(features(:, 1)), max(features(:, 1)), 30), ...
                    linspace(min(features(:, 2)), max(features(:, 2)), 30));
x3_pred = predict(mdl, [x1(:), x2(:), repmat(mean(features(:, 3:end), 1), numel(x1), 1)]);

% Plot the regression surface
scatter3(x1(:), x2(:), x3_pred, 'r.', 'DisplayName', 'Regression Surface');

% Add labels and legend
xlabel('Mileage');
ylabel('Liter');
zlabel('Distance');
legend('Location', 'best');
title('Multiple Linear Regression: Distance vs Mileage, Liter, and Other Features');

% Display the plot
hold off;
