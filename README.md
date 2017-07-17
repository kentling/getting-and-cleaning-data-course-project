This is a repository of course project from week 4 Getting and Cleaning Data, and contains the following files
- `README.md` An overview of this repository
- `CodeBook.md` Describe the variables of resultant file `tidied_averages.txt`
- `run_analysis.R` the R script for data cleaning and others required by the course project.

# How to run the R script file
- Download the raw data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
- Unzip the file
- open R, Change the working directory in R to the folder that unzip the file
- execute the `run_analysis.R` by `source("run_analysis.R")`
- Output will be written to the resultant file `tidied_averages.txt`

# How the script works
The procedure of this script performs 5 main steps:
1. Reading  the activity types and features as descriptive fields to the main train and test dataset respectively.
2. Reading train and test dataset, combine with the fields in step 1, and select the data with mean and standard deviation only.
3. Merging the two train and test data by activity ID
4. Calculate the summary by their subject and activity as identifier
5. Appropriately labels the data set with descriptive variable names and output to file
