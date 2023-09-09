# ========================================================================================================
# Purpose:        BUS352 TMA
# Name:           Angie Wong Mei Chi
#=========================================================================================================

#--------------------------------IMPORTING REQUIRED LIBRARIES-------------------------------------#
library(data.table)
library(ggplot2)
library(dplyr)
library(car)

#--------------------------------IMPORTING DATASET-------------------------------------#
setwd("/Users/angie/Desktop")
dt<-fread("new_TMA.csv", header=T)
View(dt)

m1<- lm(`order fulfillment rate`~`Inventory accuracy`, data=dt)
summary(m1)
par(mfrow = c(2,2)) 
plot(m1)
par(mfrow = c(1,1))