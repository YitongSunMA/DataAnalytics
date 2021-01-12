install.packages("stargazer")

library(tidyverse)
library(gridExtra)
library(ggplot2)
library(leaflet)
library(dplyr)
library(stargazer)

rm(list = ls())

# Load data
airbnb <- read_csv("airbnb.csv")

#build model
fit1 <- lm(price_log ~ ., data=airbnb) 
summary(fit1)
result = stargazer(fit1, type = "text")

airbnb11 <- read_csv("airbnb11.csv")
fit2 <- lm(price_log ~ ., data=airbnb11) 
result = stargazer(fit1, fit2, type = "text")  

#summary moedl
summary(airbnb)
summary(airbnb11)

fit3 <- lm(number_of_reviews ~ ., data=airbnb) 
result = stargazer(fit3, type = "text")

table(airbnb$`Hotel room`)

summary(fit3)
