
# run_analysis.R  - Getting and Cleaning Data Course Project


# Read the activity types
activity_labels <- read.table('UCI HAR Dataset/activity_labels.txt')
names(activity_labels) <- c('id', 'name')

# Read the features table
features <- read.table('UCI HAR Dataset/features.txt', header=FALSE)
names(features) <- c('id', 'name')
#Extracts only the measurements on the mean and standard deviation for each measurement. 
features <- subset(features, grepl('-(mean|std)\\(\\)', name))
#features$name <- gsub('\\(\\)', '', features$name)
#features$name <- gsub('-std', '-stdev', features$name)


# Read the Train data
X <- read.table('UCI HAR Dataset/train/X_train.txt', header=FALSE)
X <- X[, features$id]
names(X) <- features$name
subject <- read.table(paste('UCI HAR Dataset/train/subject_train.txt', sep=''), header=FALSE)
names(subject) <- c('subject_id')
y <- read.table('UCI HAR Dataset/train/y_train.txt', header=FALSE)
names(y) <- c('id')
trainData<- cbind(subject, y, X)

# Read the Test data 
X <- read.table('UCI HAR Dataset/test/X_test.txt', header=FALSE)
X <- X[, features$id]
names(X) <- features$name
subject <- read.table(paste('UCI HAR Dataset/test/subject_test.txt', sep=''), header=FALSE)
names(subject) <- c('subject_id')
y <- read.table('UCI HAR Dataset/test/y_test.txt', header=FALSE)
names(y) <- c('id')
testData<- cbind(subject, y, X)
  
  
#Merges the training and the test sets to create one data set.
  
  
combinedData <- rbind(trainData, testData)
combinedData <- merge(activity_labels, combinedData, by.x=c('id'), by.y=c('id'))

output <- aggregate(combinedData[, 4:ncol(combinedData)], by=list( subject=combinedData$subject_id, activity=combinedData$name),  mean)


# Appropriately labels the data set with descriptive variable names. 
names(output) <- gsub('Acc',"Acceleration",names(output))
names(output) <- gsub('GyroJerk',"AngularAcceleration",names(output))
names(output) <- gsub('Gyro',"AngularSpeed",names(output))
names(output) <- gsub('Mag',"Magnitude",names(output))
names(output) <- gsub('^t',"TimeDomain.",names(output))
names(output) <- gsub('^f',"FrequencyDomain.",names(output))
names(output) <- gsub('\\.mean',".Mean",names(output))
names(output) <- gsub('\\.std',".StandardDeviation",names(output))
names(output) <- gsub('Freq\\.',"Frequency.",names(output))
names(output) <- gsub('Freq$',"Frequency",names(output))

# Output to a file.
write.table(output, 'tidied_averages.txt', row.names=FALSE)


