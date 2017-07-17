# Code book for Coursera Getting and Cleaning Data course project

This document provides the structure of resultant data from the script `run_analysis.R`. The procedure of script performs 5 main steps:
1. Reading  the activity types and features as descriptive fields to the main train and test dataset respectively.
2. Reading train and test dataset, combine with the fields in step 1, and select the data with mean and standard deviation only.
3. Merging the two train and test data by activity ID
4. Calculate the summary by their subject and activity as identifier
5. Appropriately labels the data set with descriptive variable names and output to file

## Data
The `tidied_averages.txt` is a space delimited file. Storing the cleaned and averaged data from the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The first row is the variable names, with subject and activity as identifier.
