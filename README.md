# MechaCar

## Project Overview
Apply understanding of statistics and hypothesis testing to analyze a series of datasets from the automotive industry. Determine the most appropriate statistical test for a given hypothesis and dataset.

### Resources
- Data source: MechaCar_mpg.csv, Coil_Suspension.csv
- Software: R version 3.6.3, RStudio

### Project Objective 
To perform a series of statistical tests and create a technical report that provides your interpretation of the findings. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles and there are a number of issues surrounding the vehicle’s specifications and manufacturing process that are blocking the manufacturing team from proceeding. AutosRUs’ wants the analysis of the production data in order to justify some last-minute design decisions. The launch of the MechaCar should be one of the most successful product launches in the company’s history

The goal is to:
- Design and interpret a multiple linear regression analysis to identify variables of interest.
- Calculate summary statistics for quantitative variables.
- Perform a t-test in R and provide interpretation of results.
- Design your own statistical study to compare vehicle performance of two vehicles.

## Multiple Linear Regression

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

To determine which variables provide a non-random amount of variance we want to look at the individual p-values [Pr(>|t|)], which represent the probability that each variable contributes a  random amount of variance to the linear model. A p-value of 0.05 or smaller indicates that there is enough evidence to reject the null hypothesis.

Ground clearance and vehicle length reject the null hypothesis, meaning they are vehicle specifications that have an affect on vehicle performance. Their p-values are 2.13e-08 and 3.05e-12, respectively.Additionally, the interceprt rejects the null hypothesis and is statistically significant with a p-value of 1.87e-08. This means there are variables contributing to the variation in mpg that are not included in this dataset/model, and additional variables and observations still need to be collected. 

2. Is the slope of the linear model considered to be zero? Why or why not?

No. First we want to look at the R-squared value, which is 0.7032 meaning that 70% of our mpg predictions will be correct using out model. The p-value for the multiple regression has a value of 2.277e-11, which is much smaller than our assumed significance of 0.05. This tells us that the slope of our linear model is NOT zero. 

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

No, only 2 (vehicle length and ground clearance) out of 4 of our variables are significant enough to predict the mpg of MechaCar prototypes. Also, the significant level of the intercept tells us that there are variables contributing to the mpg that are not accounted for in this dataset. 

## Summary Table

When looking at the summary table for all three lots, the variance is 62.29, indicating that the manufacturing of the coils meet the design specification of no excedding 100 pounds per inch. To get a better look at individual lots, another summary table was grouped by lots. From the data we can see that Lot 1 and 2 have a generally low variance of 0.98 and 7.7 pounds, respectively. Lot 1 and 2 are meeting the design specifications. When looking at Lot 3 we see that the variance is 170.28, which exceeds the 100 pounds per inch specification, meaning that lot 3 is not meeting the design specifications. 

## T-test

Determine if the suspension coil’s pound-per-inch results are statistically different from the mean population results of 1,500 pounds per inch

Null Hypothesis: There is no statistical difference between the mean pop and sample pop from each lot.

Lot 1: There is a p-value of 1 meaning that we fail to reject the null hypothesis and that there is no statistical difference between the lot 1 and the mean population.
Lot 2: There is a p-value of 0.6072 meaning that we fail to reject the null hypothesis and that there is no statistical difference between the lot 2 and the mean population.
Lot 3: There is a p-value of 0.04168 meaning that we are able to reject the null hypothesis and that there is a statistical difference between the lot 3 and the mean population.

## Design Your Own Study

To get a more informed look as to how MechaCar will compete with comparable cars currently on the market, we need to consider additional metrics that consumers are commonly influenced by and consider when purchasing a new car. In this report we will be taking a look at braking performance, acceleration, trunk and cargo space, and MSRP. 

1. Braking Perforamnce 
Is the mean braking performance - the stopping distance measured from when a car is going 60 mph to standstill when on wet and dry pavement - of MechaCar statistically different from competing cars on the market? 

- Null Hypothesis: There is no statistical difference in braking perfomrance between MechaCar and the competitor vehicle.
- Alternative Hypothesis: There is a statistical difference in braking performance between MechaCar and the competitor. I hypothesize that MechaCar's braking performace is better, meaning it travels a shorter distance when going from 60 mph to standstill.
- How to Test: A Two-Sample t-test will be used to test the measured difference between the distribution mean of MechaCar's sample and the competitor's sample. 
- Data to Collect: Stopping distance measured from when a car begins decelerating at 60 mph to being at a standstill. Units will be measured to the centimeter. 

2. Acceleration 
Is acceleration - the time it takes for a vehicle to reach 60 mph from a complete stop - of MechaCar statistically different from competing cars?

- Null Hypothesis: There is no statistical difference in acceleration between MechaCar and the competitor vehicle.
- Alternative Hypothesis: There is a statistical difference in acceleration between MechaCar and the competitor. I hypothesize that MechaCar has a faster acceleration when compared to competitors, meaning it takes less time to got from 0 to 60 mph.
- How to Test: A Two-Sample t-test will be used to test the difference in time between the distribution mean of MechaCar's sample and the competitor's sample. 
- Data to Collect: The time it takes for a car to reach 60 mph on a flat pavement straitaway. Units will be measured to the second.  

3. Trunk and Cargo Space
Is there a statistical difference in the cargo space of a vehicle model based on the car company? MechaCar wants to have a competitive vehicle for the current market, so we will want to be on par with some of the more popular car brands. For this metric, we will be focusing our attention on cars with enclosed trunks as they have a similar biuld to MechaCar. We will be looking at multiple vehicle models across a few automotice companies. We will not be taking SUV's or trucks into account. 

- Null Hypothesis: There is no statistical difference in how much cargo space a vehicle has and the automotive company that designed it. 
- Alternative Hypothesis: There is a difference in means when it comes to cargo space and the company that is designing the vehicle. I hypothesize that the most popular car companies will have a greater mean cargo space per vehicle model, compared to car companies that are not as popular. 
- How to Test: A one-way ANOVA test will be used to test the means of a single dependent variable (measured trunk space) across independent variables (car models) within multiple groups (car companies).
- Data to Collect: We will measure the trunk's usable volume by measuring the length, width and heigth and multiplying it all together to get the cargo room. Units will be in feet squared. 

4. MSRP
Is the mean MSRP (manufacturer's suggested retail price) of MechaCar, statistically different from the leading competitor vehicles?

- Null Hypothesis: There is no statistical difference in MSRP between MechaCar and the competitor vehicles.
- Alternative Hypothesis: There is a statistical difference in MSRP means between MechaCar and the competitors. I hypothesize that MechaCar has a higher mean MSRP compared to competitors.
- How to Test: A Two-Sample t-test will be used to test the difference of MSRP between vehicles. 
- Data to Collect: The starting MSRP for MechaCar and all competitor vehicles in 2020. Units will be in USD. 

