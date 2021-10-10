# MechaCar_Statistical_Analysis
# Background
>A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

## Linear Regression to Predict MPG
![](https://github.com/WilliamBHW/MechaCar_Statistical_Analysis/blob/main/Resources/carSummary.png) <br>
From the regression model, it is clear that ```vehicle_length``` and ```ground_clearance``` have provided none random amount of variance since the p-value for these two variables are strictly less than the alpha significance. The slope of this model should not be considered as zero since all variable have a corresponding coefficient (only 3 of them indicating the variable is not significant which can be considered zero). From the adjusted R-square, we know that this model has described 68.25% of the total popualtion (and the p-value for this model is 5.35e^-11) indicating this model is not the desired fit of the data.

## Summary Statistics on Suspension Coils
#### sumary statistics of entire data frame
![](https://github.com/WilliamBHW/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary.png)
#### summary statistics by group
![](https://github.com/WilliamBHW/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.png) <br>
From the lot_summary, it is clear that cars under Lot3 manufacture line has exceed the requirement (variance of the suspension coils must not exceed 100 pounds per square inch)

## T-Tests on Suspension Coils
#### Overall test statistics
![]()

#### PSI test statistics by Manufacturing_Lot
![](https://github.com/WilliamBHW/MechaCar_Statistical_Analysis/blob/main/Resources/lot_test_statistics.png) <br>
The p-value for Lot1, Lot2 and Lot3 is 1, 0.06072 and 0.04168 respectively. The t statistics indicate that Lot1 and Lot2 does not differ their mean PSI from 1500 statistically. Whereas Lot3 has p-value strictly less than the alpha significance level of 0.05 indicating the mean PSI is differ from 1500.
