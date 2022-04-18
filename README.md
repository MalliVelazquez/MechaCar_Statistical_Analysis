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


## Summary Statistics on Suspension Coils

For this part of the analysis, the suspension coil (scoils) dataset was used. Below we can see a part of the 150 IDs of different vehicles with 3 different lot numbers and the corresponding PSI levels for each vehicle.

![scoils_dataset](https://user-images.githubusercontent.com/96633294/163861128-31599948-931d-45c1-bbf5-b442a8a614ca.png)

Two summary tables were created to calculate corresponding mean, median, variance, and standard deviation of the data. 
We analyzed the data separately, as a whole (first table) and then specifically analyzed each of the three different lot into which the MechaCars were divided (second table).

Please find bellow both tables as a reference: 

![total_summary_df](https://user-images.githubusercontent.com/96633294/163863367-b30fb716-14c6-4b02-8e9c-f24732327d40.png)

![lot_summary_df](https://user-images.githubusercontent.com/96633294/163863476-513f8be2-c6c5-4ce7-aa7e-be789ac1a30e.png)

### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
PSI variance is lower than 100 (76.23) meaning that it meets the design specification, however, checking the individual variances we can notice that thirth one exceeds the design specification. So, teams can work with lot 1 and 2 

## T-Tests on Suspension Coils

For this part of the analisys we use RStudio function t.test() to determine if all lots of manufacture and individual lots are statistically different from 1,500 pounds per square inch  (mean).

### Results

After completing the four test (One per all manufacturing and three more, one per each lot) results show us that all four tests get a p-value are greater than .05 so, it's not possible to reject the null hypotesis that there is a statistical difference from the mean of 1,500 PSI

Bellow you can see the t.tests summary:

*All manufacture lots: 

![all_manufacturing_ttest](https://user-images.githubusercontent.com/96633294/163883354-0b653cbe-66aa-4737-ae5e-d11fbc971cd9.png)

*Lot 1

![lot1_ttest](https://user-images.githubusercontent.com/96633294/163883388-a0aac5d5-2d6c-40fc-815d-7896dc9baaef.png)

*Lot 2

![lo2_ttest](https://user-images.githubusercontent.com/96633294/163883428-30314ed3-66a7-4617-94cb-69176c9521e0.png)

*lot 3

![lot3_ttest](https://user-images.githubusercontent.com/96633294/163883474-adb688c6-30bf-4f48-887f-918c8187bbe0.png)


## Study Design: MechaCar vs Competition
Now lets focus on what it's important, why MechaCar is better than the competition? Why to buy with them. Let's take in consideration that following questions can change the point of view of this analysis to improve or continue company stategies:

### What metric or metrics are we going to test?
- Price
- Fuel efficiency
- mantainance cost
- Purchasing power of the target consumer

### What is the null hypothesis or alternative hypothesis?
Null: People with more purchasing power are less interested in price but the rest of the metrics.
Alternative: People always care about the price vs the rest of the metrics no matter the purchasing power

### What statistical test would you use to test the hypothesis? And why?
We'll have to make a sample of different buyer target for different car models and analyze the correlation between price vs purchasing power.

### What data is needed to run the statistical test?
A sample of several consumers showing their earning salary and the model of cars they would buy so we can run linear regressions ans correlations test based on that. 








