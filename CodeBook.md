# Code book for Coursera Getting and Cleaning Data course project

This document provides the structure of resultant data from the script `run_analysis.R`. The procedure of script performs 5 main steps:
1. Reading  the activity types and features as descriptive fields to the main train and test dataset respectively.
2. Reading train and test dataset, combine with the fields in step 1, and select the data with mean and standard deviation only.
3. Merging the two train and test data by activity ID
4. Calculate the summary by their subject and activity as identifier
5. Appropriately labels the data set with descriptive variable names and output to file

## Variables
The `tidied_averages.txt` is a space delimited file. Storing the cleaned and averaged data from the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The first row is the variable names, with subject and activity as identifier.
All variables were averaged from source dataset, normalised in floating point values.

  - subject
  	- An integer from 1-30
  
  - activity
	- `WALKING`: subject was walking
	- `WALKING_UPSTAIRS`: subject was walking upstairs
	- `WALKING_DOWNSTAIRS`: subject was walking downstairs
	- `SITTING`: subject was sitting
	- `STANDING`: subject was standing
	- `LAYING`: subject was laying
  - Two Domain of measurements
  	- Time-domain signals : `TimeDomain` were captured from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
	- Frequency-domain signals : `FrequencyDomain` were captured from Fast Fourier Transform (FFT) applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.

The below signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- TimeDomain.BodyAcceleration-XYZ
- TimeDomain.GravityAcceleration-XYZ
- TimeDomain.BodyAccelerationJerk-XYZ
- TimeDomain.BodyAngularSpeed-XYZ
- TimeDomain.BodyAngularAcceleration-XYZ
- TimeDomain.BodyAccelerationMagnitude
- TimeDomain.BodyAccelerationJerkMagnitude
- TimeDomain.BodyAngularSpeedMagnitude
- TimeDomain.BodyAngularAccelerationMagnitude
- FrequencyDomain.BodyAcceleration-XYZ
- FrequencyDomain.BodyAccelerationJerk-XYZ
- FrequencyDomain.BodyAngularSpeed-XYZ
- FrequencyDomain.BodyAccelerationMagnitude
- FrequencyDomain.BodyBodyAccelerationJerkMagnitude
- FrequencyDomain.BodyBodyAngularSpeedMagnitude
- FrequencyDomain.BodyBodyAngularAccelerationMagnitude


The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation


