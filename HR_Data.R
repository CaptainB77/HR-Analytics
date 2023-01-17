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

#With these we know the most part of the data are male

#Let's take a look to the marital status

Marital = HrData %>% 
  group_by(MaritalStatus) %>% 
  count(MaritalStatus)

ggplot(Marital, aes(x = "", y = n, fill = MaritalStatus)) +
  geom_col(color = "black") +
  coord_polar(theta = "y") +
  geom_text(aes(label = n),
            position = position_stack(vjust = 0.5)) +
  coord_polar(theta = "y")

#How many of them travel

Travel = HrData %>% 
  group_by(BusinessTravel) %>% 
  count(BusinessTravel)

ggplot(Travel, aes(x = "", y = n, fill = BusinessTravel)) +
  geom_col(color = "black") +
  coord_polar(theta = "y") +
  geom_text(aes(label = n),
            position = position_stack(vjust = 0.5)) +
  coord_polar(theta = "y")

#About the job role
JobR = HrData %>% 
  group_by(JobRole) %>% 
  count(JobRole)

ggplot(JobR, aes(x = "", y = n, fill = JobRole)) +
  geom_col(color = "black") +
  coord_polar(theta = "y") +
  geom_text(aes(label = n),
            position = position_stack(vjust = 0.5)) +
  coord_polar(theta = "y")

#Education Field
Education = HrData %>% 
  group_by(EducationField) %>% 
  count(EducationField)

ggplot(Education, aes(x = "", y = n, fill = EducationField)) +
  geom_col(color = "black") +
  coord_polar(theta = "y") +
  geom_text(aes(label = n),
            position = position_stack(vjust = 0.5)) +
  coord_polar(theta = "y")