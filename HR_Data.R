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


#Education Level
EducationL = HrData %>% 
  group_by(Education) %>% 
  count(Education)

ggplot(EducationL, aes(x = "", y = n, fill = Education)) +
  geom_col(color = "black") +
  coord_polar(theta = "y") +
  geom_text(aes(label = n),
            position = position_stack(vjust = 0.5)) +
  coord_polar(theta = "y")


#How many years they have at the company
YearsCompany = HrData %>% 
  group_by(YearsAtCompany) %>% 
  count(YearsAtCompany)

YearsCompany %>% 
  ggplot(aes(y = n , x = YearsAtCompany , fill = YearsAtCompany )) +
  geom_bar(stat="identity",position=position_dodge(), alpha = 0.8) + 
  theme_minimal() + 
  scale_fill_gradient(low="#4f908c",high="#6e0ff9") +  
  theme(legend.position="none")+
  geom_text(aes(label= n), hjust= -0.2)

#About their age

Age = HrData %>% 
  group_by(Age) %>% 
  count(Age)

Age %>% 
  ggplot(aes(y = n , x = Age , fill = Age )) +
  geom_bar(stat="identity",position=position_dodge(), alpha = 0.8) + 
  theme_minimal() + 
  scale_fill_gradient(low="#4f908c",high="#6e0ff9") +  
  theme(legend.position="none")+
  geom_text(aes(label= n), hjust= -0.2)

