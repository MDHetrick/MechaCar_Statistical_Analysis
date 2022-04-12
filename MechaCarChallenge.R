library(dplyr)
library(tidyverse)
library(ggplot2)

#Deliverable 1 - Linear Regression to Predict MPG
mechacar <- read.csv(file='MechaCar_mpg.csv')
mechacarDF <- as.data.frame(mechacar)
summary(mechacarDF)
mpg_eval <- lm(mpg ~ ., data = mechacarDF)
summary(mpg_eval)
mpg_eval

#create plots
ggplot(mechacarDF, aes(x = vehicle_length, y = mpg))+ geom_point() +
  stat_smooth(method = lm)
ggplot(mechacarDF, aes(x = vehicle_weight, y = mpg))+ geom_point() +
  stat_smooth(method = lm)
ggplot(mechacarDF, aes(x = spoiler_angle, y = mpg))+ geom_point() +
  stat_smooth(method = lm)
ggplot(mechacarDF, aes(x = ground_clearance, y = mpg))+ geom_point() +
  stat_smooth(method = lm)
ggplot(mechacarDF, aes(x = AWD, y = mpg))+ geom_point() +
  stat_smooth(method = lm)

#Deliverable 2 - Summary Statistics
suspension_coil <- read.csv(file='Suspension_Coil.csv')
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
coil_lot <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#Deliverable 3 - T-tests on Suspension Coils
t.test(suspension_coil$PSI, mu=15000)

coil_lot1 <- subset(suspension_coil, Manufacturing_Lot =='Lot1')
t.test(coil_lot1$PSI, mu=1500)

coil_lot2 <- subset(suspension_coil, Manufacturing_Lot =='Lot2')
t.test(coil_lot2$PSI, mu=1500)

coil_lot3 <- subset(suspension_coil, Manufacturing_Lot =='Lot3')
t.test(coil_lot3$PSI, mu=1500)


