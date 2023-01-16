usethis::edit_git_config()
usethis::use_git()
use_github()
usethis::use_github()

library(tidyverse)
library(readr)
library (janitor)
library(stringr)

summary(HR_Employee_Attrition)

HrData = HR_Employee_Attrition [,c(-9,-22,-27)]
