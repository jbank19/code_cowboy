# Code Cowboy Script - Testing user-defined functions for workflow X
# Last updated: 28 October 2023

# Load relevant libraries

library(tidyverse)

# Load the udfs; note that you will need to change the file path based on where
# you locally clone the repo

source("/Users/joel/Documents/University Studies/LSE/Year 2/Autumn Term/MY472/Assignment 2/Question 1/code_cowboy/UDF scripts/workflowX_udf.R")

# Load the data for testing the udfs; note that you will need to change the file 
# path based on where you locally clone the repo

us_macro_data <- read.csv(file = "/Users/joel/Documents/University Studies/LSE/Year 2/Autumn Term/MY472/Assignment 2/Question 1/code_cowboy/Data/fred_macro_data.csv")

# Check that the udfs work using the test data by inspecting some rows of the output

us_macro_data_transformed <- percent_change(data = us_macro_data) 
tail(us_macro_data_transformed) # check default assumption for second argument
