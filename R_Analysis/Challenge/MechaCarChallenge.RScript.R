# Deliverable 1

#3
library(dplyr)

#4
mpg_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)

#5
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table)

#6
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table))