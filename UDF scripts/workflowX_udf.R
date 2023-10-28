# Company ABC Script - User-defined functions for workflow X
# Last updated: 28 October 2023

# Function 1 - percent_change: this function calculates the percentage change 
#                              from one observation (row) in a column to the 
#                              following observation (row) for all numeric
#                              columns in a dataframe, and adds them as new
#                              columns to the original dataframe. It is useful
#                              for calculating growth rates with time series data.
#
#             args:
#                 data = a dataframe containing numeric columns
#
#         returns:
#                 a dataframe containing all of the original columns plus new
#                 columns that contain the transformed (percentage change)
#                 numeric data 


percent_change <- function(data) {
  data <- data %>%
    mutate(across(c(where(is.numeric)), ~ (./lag(.) - 1)*100,
                  .names = "{.col}_percent_change"))
}
