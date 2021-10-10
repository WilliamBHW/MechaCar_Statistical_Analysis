# MechaCar_Statistical_Analysis
# Background
>A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

## Linear Regression to Predict MPG
![](https://github.com/WilliamBHW/MechaCar_Statistical_Analysis/blob/main/Resources/carSummary.png) <br>
From the regression model, it is clear that ```vehicle_length``` and ```ground_clearance``` have provided none random amount of variance since the p-value for these two variables are strictly less than the alpha significance. The slope of this model should not be considered as zero since all variable have a corresponding coefficient (only 3 of them indicating the variable is not significant which can be considered zero). From the adjusted R-square, we know that this model has described 68.25% of the total popualtion (and the p-value for this model is 5.35e^-11) indicating this model is not the desired fit of the data.

## Summary Statistics on Suspension Coils
##### sumary statistics of entire data frame
![](https://github.com/WilliamBHW/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary.png) <br>
From the ```total_summary```, it is clear that the variance of PSI for the entire data frame meets the requirement of not exceeding 100 pounds per square inch.

##### summary statistics by group
![](https://github.com/WilliamBHW/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.png) <br>
From the ```lot_summary```, it is clear that vehciles under Lot3 manufacture line has exceed the requirement (variance of the suspension coils must not exceed 100 pounds per square inch)

## T-Tests on Suspension Coils
##### Overall test statistics
![](https://github.com/WilliamBHW/MechaCar_Statistical_Analysis/blob/main/Resources/test_statistics.png) <br>
The overall p-value for suspension coil PSI is 0.06028 which is strictly greater than the alpha significance level os 0.05. Thus, the null hypothesis of mean PSI differ from 1500 is bejing rejected, indicating the mean PSi of entire data set is differ from 1500.

##### PSI test statistics by Manufacturing_Lot
![](https://github.com/WilliamBHW/MechaCar_Statistical_Analysis/blob/main/Resources/lot_test_statistics.png) <br>
The p-value for Lot1, Lot2 and Lot3 is 1, 0.06072 and 0.04168 respectively. The t statistics indicate that Lot1 and Lot2 does not differ their mean PSI from 1500 statistically. Whereas Lot3 has p-value strictly less than the alpha significance level of 0.05 indicating the mean PSI is differ from 1500.

## Study Design: MechaCar vs Competition
Since the consumers are relying on key features of the vehicle such as cost; maintenance cost; safety rating etc, the study will be conducted with the following metrics:
- Cost (Annual/Quarterly/Monthly) ```dependent variable```
- Insurance ```independent variable```
- Maintennance Cost ```independent variable```
- Fuel Efficiency ```independent variable```
- Horsepower ```independent variable```
- Safety Rating ```independent variable```
- Storage Capacity ```independent variable```
- Warranty Length ```independent variable```

These data will be used to conduct the following hypothesis:
- Ho: MechCar is well priced absed on the metrics (statistical model)
- Ha: MechCar is NOT well priced absed on the metrics (statistical model)

With the hypothesis being conducted, it is clear that the test statistics for this model is the Multilinear Regression Analysis since it is corresponding to multiple variables. Multilinear Regression is responsible for testing significance of a variable which will impact the selling price of vehcile and the model's accuracy of describing entire population with given metrics.
