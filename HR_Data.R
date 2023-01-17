usethis::edit_git_config()
usethis::use_git()
use_github()
usethis::use_github()

library(tidyverse)
library(readr)
library (janitor)
library(stringr)
library(dplyr)
library(ggplot2)

summary(HR_Employee_Attrition)

#Time to clean the data
HrData = HR_Employee_Attrition [,c(-9,-22,-27)]

#Let's take a look the data with some graphics
#First let's see a little bit about the demographics of our dataset

#Gender

Gender2 = HrData %>% 
  group_by(Gender) %>% 
  count(Gender)

ggplot(Gender2, aes(x = "", y = n, fill = Gender)) +
  geom_col(color = "black") +
  coord_polar(theta = "y") +
  geom_text(aes(label = n),
            position = position_stack(vjust = 0.5)) +
  coord_polar(theta = "y")
