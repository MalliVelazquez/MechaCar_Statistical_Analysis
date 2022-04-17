#Deliverable 1.

#Use the library() function to load the dplyr package
install.packages("readr")
library(dplyr)
library(readr)

#Import and read in the MechaCar_mpg.csv file as a dataframe.
mechaCar <- read.csv('MechaCar_mpg.csv')

#Perform linear regression using the lm() function. 
#In the lm() function, pass in all six variables (i.e., columns), 
#and add the dataframe you created in Step 4 as the data parameter.
mdl <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar)

#Using the summary() function, determine the p-value and the r-squared 
#value for the linear regression model.
summary(mdl)

#correlations 
cor(mechaCar, method ="pearson")
