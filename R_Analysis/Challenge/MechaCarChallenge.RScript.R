# Deliverable 1
library(tidyverse)

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



# Deliverable 3

#1
sample_table <- coil_table %>% sample_n(35)
plt <- ggplot(sample_table,aes(x=PSI))
plt + geom_density()
t.test(sample_table$PSI,mu=1500)


#2
sample_lot1_table <- coil_table %>% subset(Manufacturing_Lot=='Lot1') %>% sample_n(25)
t.test(sample_lot1_table$PSI, mu=1500)

sample_lot2_table <- coil_table %>% subset(Manufacturing_Lot=='Lot2') %>% sample_n(25)
t.test(sample_lot2_table$PSI, mu=1500)


sample_lot3_table <- coil_table %>% subset(Manufacturing_Lot=='Lot3') %>% sample_n(25)
t.test(sample_lot3_table$PSI, mu=1500)


