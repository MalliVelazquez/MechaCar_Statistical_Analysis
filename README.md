# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

The main purpose is to analyze and offer information on the production of MechaCar. Two datasets containing information related to the MechaCar's miles per gallon (MPG) and suspension coils will be used.

Bellow we can see the 6 variables of the dataset:

![MechaCar_mpg](https://user-images.githubusercontent.com/96633294/163697302-febe1cfb-6535-47f3-835e-700a13d28064.png)

Results of linear regression: 

![linear_regression](https://user-images.githubusercontent.com/96633294/163697125-b9db578a-eed2-4c8c-922b-575a9f4f29e7.png)

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Variables showed a non-random amount of variance: The vehicle length and the ground clearance. 
Both of these have a very low p-value meaning they are different from zero & had a high level of significance. 

### Is the slope of the linear model considered to be zero? Why or why not?
Slope of the linear model is not zero (p-value <0.05). This  means linear regression shows some of the independent variables have significant effect on the dependent variable. If the independent variables have an effect on the dependent variable then linear regression would result a near zero slope.

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
R-sqaure and p-value explain majority of the values. As the r-squared value is the main indicator of whether the linear model predicts the MPG of the MechaCar 0.7149 means model could be pretty effective

Bellow we show correlations in RStudio console:

![Correlations1](https://user-images.githubusercontent.com/96633294/163697521-154c2f40-e090-4573-b070-9896a2908674.png)


