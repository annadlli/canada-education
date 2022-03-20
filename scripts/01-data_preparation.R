#### Preamble ####
# Purpose: Prepare the 2017 CA GSS data
# Author: Anna Li
# Data: 17 March 2022
# Contact: annadl.li@mail.utoronto.ca
# License: UofT
# Pre-requisites: 
# - Need to have downloaded the GSS data microdata through CHASS and done initial cleaning with 01_data_clean.


#### Workspace setup ####
library(tidyverse)
library(knitr)
# Read in the raw data. 
gss <- read_csv("inputs/data/gss.csv")

#### Prepare data ####
# Just keep some variables that may be of interest
ca_gss<- gss %>% select(feelings_life, aboriginal, vis_minority, 
                        marital_status, education, self_rated_health, 
                        self_rated_mental_health, income_family, 
                        income_respondent,  number_total_children_intention,
                        is_male, age)
ca_gss<-na.omit(ca_gss)
ca_gss$vis_minority<-as.factor(ca_gss$vis_minority)
ca_gss$aboriginal<-as.factor(ca_gss$aboriginal)
ca_gss$is_male<-as.factor(ca_gss$is_male)
ca_gss$education <- factor(ca_gss$education, 
                           levels = c("Less than high school diploma or its equivalent", 
                                      "High school diploma or a high school equivalency certificate", 
                                      "College, CEGEP or other non-university certificate or di...",
                                      "Trade certificate or diploma", 
                                      "University certificate or diploma below the bachelor's level", 
                                      "Bachelor's degree (e.g. B.A., B.Sc., LL.B.)", 
                                      "University certificate, diploma or degree above the bach..."))

levels(ca_gss$education) <- c("1", "2", "3", "4", "5", "6", "7")

ca_gss$income_family <- factor(ca_gss$income_family, levels = c("Less than $25,000", "$25,000 to $49,999", "$50,000 to $74,999", "$75,000 to $99,999", "$100,000 to $ 124,999", "$125,000 and more"))
levels(ca_gss$income_family) <- c("1", "2", "3", "4", "5", "6")

ca_gss$income_respondent <- factor(ca_gss$income_respondent, levels = c("Less than $25,000", "$25,000 to $49,999", "$50,000 to $74,999", "$75,000 to $99,999", "$100,000 to $ 124,999", "$125,000 and more"))
levels(ca_gss$income_respondent) <- c("1", "2", "3", "4", "5", "6")


ca_gss$self_rated_health <- factor(ca_gss$self_rated_health, 
                                   levels = c("Don't know", "Fair", "Poor", 
                                              "Good", "Very good", "Excellent"))
levels(ca_gss$self_rated_health) <- c("0", "1", "2", "3", "4", "5", "6")

ca_gss$self_rated_mental_health <- factor(ca_gss$self_rated_mental_health,
                                          levels = c("Don't know", "Fair", 
                                                     "Poor", "Good", 
                                                     "Very good", "Excellent"))
levels(ca_gss$self_rated_mental_health) <- c("0", "1", "2", "3", "4", "5", "6")

#### Save ####
write_csv(ca_gss, "outputs/data/ca_gss.csv")



         