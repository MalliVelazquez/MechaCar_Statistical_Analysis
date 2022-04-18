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


#Deliverable 2

#Download the Suspension_Coil.csv file, and place it in the active directory for your R session.
#In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
scoils <- read.csv('Suspension_Coil.csv', stringsAsFactors = F) 

# Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column.
total_summary_df <- scoils %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column.
lot_summary_df <- scoils %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) 

#Deliverable 3 

# write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different 
#from the population mean of 1,500 pounds per square inch.
t.test(x=scoils$PSI, mu=1500) 

#Lot1 t.test
pop1 <- subset(scoils, Manufacturing_Lot=='Lot1')
t.test(x=pop1$PSI, mu=1500)

#Lot2 t.test
pop2 <- subset(scoils, Manufacturing_Lot=='Lot2')
t.test(x=pop2$PSI, mu=1500)

#Lot3 t.test
pop3 <- subset(scoils, Manufacturing_Lot=='Lot3')
t.test(x=pop3$PSI, mu=1500) 
