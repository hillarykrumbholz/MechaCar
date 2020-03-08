# Import libraries
library(tidyverse)
library(jsonlite)


# Import files
mechaCar_mpg_table <- read.csv("MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)
suspension_coil_table <- read.csv("Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

# Multiple Linear Regression
# Design a linear model that predicts the mpg of MechaCar prototypes using a number of variables within the MechaCar mpg dataset
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance, data = mechaCar_mpg_table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance, data = mechaCar_mpg_table))

# Summary Statistics for quantitative variables
# Create a summary statistics table for the suspension coil’s pounds-per-inch continuous variable.
summary_table_coil_suspension <- suspension_coil_table %>% summarise(Mean_PSI=mean(PSI), Meadian_PSI=median(PSI), Var_PSI=var(PSI), StDev_PSI=sd(PSI))
summary_table_by_lot_coil_suspension <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarise(Mean_PSI=mean(PSI), Meadian_PSI=median(PSI), Var_PSI=var(PSI), StDev_PSI=sd(PSI))

# T-test
# Determine if the suspension coil’s pound-per-inch results are statistically different from the mean population results of 1,500 pounds per inch

# Filter each lot from the suspension_coil_tablee
Lot_1_table <- suspension_coil_table %>% filter(Manufacturing_Lot == "Lot1")
Lot_2_table <- suspension_coil_table %>% filter(Manufacturing_Lot == "Lot2")
Lot_3_table <- suspension_coil_table %>% filter(Manufacturing_Lot == "Lot3")

# Testing the normaility of each lot
plt <- ggplot(Lot_1_table,aes(x=log10(PSI))) 
plt + geom_density()

plt <- ggplot(Lot_2_table,aes(x=log10(PSI))) 
plt + geom_density()

plt <- ggplot(Lot_3_table,aes(x=log10(PSI))) 
plt + geom_density()

# Perform a single t-test for each lot 
t.test((Lot_1_table$PSI), mu=1500)
t.test((Lot_2_table$PSI), mu=1500)
t.test((Lot_3_table$PSI), mu=1500)
