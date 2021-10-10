# import required libraries
library(tidyverse)
library(dplyr)

## MPG Analysis
# import MechaCar_mpg into data frame
cars <- read_csv('MechaCar_mpg.csv')
head(cars)

# create and summarize the mpg model
carModel <- cars %>% lm(mpg~vehicle_length + vehicle_weight + spoiler_angle +
                          ground_clearance + AWD, data = .)
carSummary <- summary(carModel)
carSummary

## Coil Analysis
# import Suspension_Coils into data frame
coil <- read_csv('Suspension_Coil.csv')
head(coil)

# summarize key statistics
# i.e. mean, min/max, variance, standard deviation
total_sumary <- coil %>% summarise(Mean = mean(PSI), Meidan = median(PSI), 
                                   Variance = var(PSI), SD = sd(PSI))
total_sumary

# summarize key statistics by group
lot_summary <- coil %>% group_by(Manufacturing_Lot) %>% summarise(
  Mean = mean(PSI), Meidan = median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary

# subset data frame by group
lot1 <- coil %>% subset(., Manufacturing_Lot == 'Lot1')
lot2 <- coil %>% subset(., Manufacturing_Lot == 'Lot2')
lot3 <- coil %>% subset(., Manufacturing_Lot == 'Lot3')

# check each group's test statistic
t.test(lot1$PSI, mu = 1500, data = lot1)
t.test(lot2$PSI, mu = 1500, data = lot2)
t.test(lot3$PSI, mu = 1500, data = lot3)