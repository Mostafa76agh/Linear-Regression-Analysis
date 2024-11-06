# Linear Regression Analysis in MATLAB
part 1
This MATLAB script performs a simple linear regression analysis on data read from a CSV file. It models the relationship between "Price" and "Distance" and evaluates the model's fit based on the R-squared (𝑅²) score.

## Files

- **linear_regression.m**: The main script that reads data from a CSV file, performs linear regression, checks model suitability based on R-squared, and visualizes the data and regression line.

## Code Overview

1. **Data Loading**:
   - The script reads data from a CSV file located in the specified directory.
   - Replace the file path in the `readtable` function with your specific path if needed.

2. **Data Extraction**:
   - Extracts `Price` and `Mileage` columns from the loaded data, which are used as the predictor (independent variable) and response (dependent variable), respectively.

3. **Linear Regression Model**:
   - The `fitlm` function is used to create a linear regression model to predict `Distance` based on `Price`.
   - The model’s coefficients are displayed in a linear equation format.

4. **R-squared Evaluation**:
   - The script calculates the R-squared score of the model to determine how well the linear equation fits the data.
   - If 𝑅² is 0.8 or higher, the model is considered suitable for the data; otherwise, it may not be a good fit.

5. **Plotting**:
   - The script plots the data points as a scatter plot.
   - It overlays a linear regression line on the plot to visually display the model’s fit to the data.

## Usage

1. **Prepare the Data**:
   - Ensure your data is in a CSV file with columns named `Price` and `Mileage`.
   - Modify the path in the `readtable` function to the location of your CSV file.

2. **Run the Script**:
   - Run `linear_regression.m` in MATLAB.
   - The script will output:
     - The linear regression equation.
     - The R-squared score and a suitability statement.
     - A plot of the data points and the regression line.

3. **Example Output**:
   - Console output showing the regression equation and R-squared score.
   - A plot visualizing the relationship between `Price` and `Distance`.

## Dependencies

- MATLAB (no additional toolboxes required beyond base MATLAB).

---

This setup provides a straightforward linear regression workflow in MATLAB, including data loading, model fitting, evaluation, and visualization.

part 2
# Multiple Linear Regression in MATLAB

This MATLAB script performs multiple linear regression on a dataset read from a CSV file. It models the relationship between several features (predictor variables) and the target variable (`Distance`). The script calculates and displays the regression equation and R-squared (𝑅²) score, and visualizes the data along with the regression surface.

## Files

- **multiple_linear_regression.m**: The main script that loads data, performs linear regression, evaluates the model with R-squared, and plots the data and regression surface.

## Code Overview

1. **Data Loading**:
   - The script reads data from a specified CSV file path. Update the file path in the `readtable` function to point to your CSV file.
   
2. **Feature Extraction**:
   - The predictor variables (`Mileage`, `Liter`, `Doors`, `Cruise`, `Sound`, `Leather`) are extracted from selected columns.
   - The target variable, `Distance`, is assumed to be in the `Mileage` column.

3. **Linear Regression Model**:
   - A linear regression model is created to predict `Distance` based on the selected features.
   - The regression equation, which includes the coefficients for each feature, is displayed in the console.

4. **R-squared Evaluation**:
   - The script calculates the R-squared score, indicating how well the regression equation fits the data.
   - If 𝑅² is 0.8 or higher, the model is considered suitable for the data; otherwise, it may not be a good fit.

5. **3D Scatter Plot and Regression Surface**:
   - The script visualizes the data points in a 3D scatter plot.
   - A regression surface is overlaid to show the predicted `Distance` for a grid of values based on the first two features (`Mileage` and `Liter`), using the mean of the remaining features.

## Usage

1. **Prepare the Data**:
   - Ensure your data is in a CSV file with the necessary columns. The column names or indices in `readtable` may need adjustment depending on your dataset structure.

2. **Run the Script**:
   - Run `multiple_linear_regression.m` in MATLAB.
   - The script will output:
     - The regression equation.
     - The R-squared score and a suitability message.
     - A 3D plot showing the data points and regression surface.

3. **Example Output**:
   - Console output showing the regression equation and R-squared score.
   - A 3D plot visualizing the relationship between `Distance`, `Mileage`, `Liter`, and other features.

## Dependencies

- MATLAB (no additional toolboxes required beyond base MATLAB).

## Notes

- **Customization**: Modify the path to the data file and the columns used as features as needed.
- **Interpretation**: The script provides insights into how well the selected features predict the target variable, but a higher 𝑅² score indicates a better fit.

---

This script provides a simple example of multiple linear regression with data visualization in MATLAB, useful for exploring linear relationships between multiple predictors and a single target variable.

