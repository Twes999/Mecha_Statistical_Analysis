# Deliverable 1

#3
library(dplyr)

#4
mpg_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)

#5
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table)

#6
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table))


# Deliverable 2

#2
coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors=F)

#3
total_summary <- coil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

#4
lot_summary <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
