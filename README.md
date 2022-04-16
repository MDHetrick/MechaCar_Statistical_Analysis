# MechaCar Statistical Analysis
## Purpose of Analysis
In this analysis, vehicle data is analyzed to evaluate a variety of aspects of auto manufacturing. Analysis includes evaluation of predictors of MPG and comparison of suspension coil lots.

## Linear Regression to Predict MPG
Linear regression statistics were performed on the MechaCar dataset. 
### Mecha Car Linear Regression Plots
#### MPG vs. Vehicle Length
![image](https://github.com/MDHetrick/MechaCar_Statistical_Analysis/blob/main/resources/vehicle_length.png)
#### MPG vs. Vehicle Weight
![image](https://github.com/MDHetrick/MechaCar_Statistical_Analysis/blob/main/resources/vehicle_weight.png)
#### MPG vs. Spoiler Angle
![image](https://github.com/MDHetrick/MechaCar_Statistical_Analysis/blob/main/resources/spoiler_angle.png)
#### MPG vs. Ground Clearance
![image](https://github.com/MDHetrick/MechaCar_Statistical_Analysis/blob/main/resources/ground_clearance.png)
#### MPG vs. AWD
![image](https://github.com/MDHetrick/MechaCar_Statistical_Analysis/blob/main/resources/AWD.png)

### Mecha Car Linear Regression Statistics
```
Call:
lm(formula = mpg ~ ., data = mechacarDF)

Coefficients:
     (Intercept)    vehicle_length    vehicle_weight     spoiler_angle  ground_clearance               AWD  
      -1.040e+02         6.267e+00         1.245e-03         6.877e-02         3.546e+00        -3.411e+00  
```
```
Call:
lm(formula = mpg ~ ., data = mechacarDF)

Residuals:
     Min       1Q   Median       3Q      Max 
-19.4701  -4.4994  -0.0692   5.4433  18.5849 

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

```

### Mecha Car Linear Regression Analysis

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

Using a p-value of < 0.05 as the indicator of significance, vehicle length and ground clearance provided a non-random amount of variance with p values of 2.60e-12 and 5.21e-08, respectively. Vehicle weight, spoiler angle, and AWD provided random amounts of variance with p-values > 0.05.

**Is the slope of the linear model considered to be zero? Why or why not?**

No the slope of the linear model is not considered to be zero. Some of the individual slopes are closer to zero than others, but even the smallest slope is greater than +/- 3. Additionally, a slope of zero indicates no correlation between the selected response variable (MPG) and the other variables. In this model the multiple R-squared value is 0.7149 which indicates a correlation

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**

This model consists of multiple predictors and a single outcome variable. With this model, the F-statistic is 22.07 on 5 and 44 DF, resulting in a p-value of 5.35e-11. This p-value is significantly less than the significance limit of p<0.05, indicating that this model predicts mpg effectively.


## Summary Statistics
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

### Suspension Coil Summary
The suspension coil information was summarized in a table, shown below

![image](https://github.com/MDHetrick/MechaCar_Statistical_Analysis/blob/main/resources/suspension_coil_summary.png)

The suspension coil variance is 62.3 PSI, which is less than 100 PSI. The manufacturing data for this design specification meets requirements for all lots when evaluated together.  

### Suspension Coil Lot Summary
Suspension coil information by lot was also summarized, as shown below

![image](https://github.com/MDHetrick/MechaCar_Statistical_Analysis/blob/main/resources/coil_lot_summary.png)

The variances of lot1 and lot2 meet design specifications with variances of < 100 PSI. Lot 3 does not meet requirements with a variance of > 100 PSI.



## T-Tests on Suspension Coils
The purpose of this analysis is to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch as well as if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

### Suspension Coil PSI: All Lots
A t-test was performed to compare PSI across all manufacturing lots to the population mean of 1500 PSI.

![image](https://github.com/MDHetrick/MechaCar_Statistical_Analysis/blob/main/resources/all_lots.png)

The result of this test provides a p-value < 0.06028, with a mean = 1498.78, which indicates that the mean PSI across all lots is not statistically different from the population mean of 1500 PSI.

### Suspension Coil PSI: Lot 1
A t-test was performed to compare PSI of suspension coil lot 1 to the population mean of 1500 PSI.

![image](https://github.com/MDHetrick/MechaCar_Statistical_Analysis/blob/main/resources/lot1t.png)

The result of this test provides a p-value = 1, with a mean = 1500, which indicates that the difference in PSI of lot 1 is not statistically different from the population mean of 1500.

### Suspension Coil PSI: Lot 2
A t-test was performed to compare PSI of suspension coil lot 2 to the population mean of 1500 PSI.

![image](https://github.com/MDHetrick/MechaCar_Statistical_Analysis/blob/main/resources/lot2t.png)

The result of this test provides a p-value = 0.6072, with a mean = 1500.1, which indicates that the difference in PSI of lot 2 is not statistically different from the population mean of 1500.


### Suspension Coil PSI: Lot 3
A t-test was performed to compare PSI of suspension coil lot 3 to the population mean of 1500 PSI.
![image](https://github.com/MDHetrick/MechaCar_Statistical_Analysis/blob/main/resources/lot3t.png)

The result of this test provides a p-value = 0.04168, with a mean = 1496.14, which indicates that the difference in PSI of lot 3 is statistically different from the population mean of 1500.


## Study Design: MechaCar vs. Competition
To compare MechaCar with the competition, a statistical study can be performed with the following information:
- Metrics:
  - Upfront cost, maintenance cost, fuel efficiency, safety rating, and customer satisfaction ranking
- Hypotheses:
  - **Null:** For each metric, the difference in means between MechaCar and the competitor is equal to zero
  - **Alternative:** For each metric, the true difference in means between MechaCar and the competitor is not equal to zero
- Statistical test & reasoning:
  - For each metric: T-Test comparing MechaCar to competition. The t-test is used to compare the means for two groups. This test would provide the following information: t, df, p-value, 95 percent confidence interval, sample mean estimates. With the t-test results, we could look at the p-value for significance (p<0.05) when comparing the sample means.
- Required Data
  - MechaCar data for each metric
  - Competitor's data for each metric


