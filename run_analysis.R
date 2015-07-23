##Set Working Directory
setwd("~/Documents/General/Coursera/Coursera R/Getting and Cleaning Data")

##Load plyr package
library("plyr")

##Read in the data
x_test <- read.table("X_test.txt")
y_test <- read.table("y_test.txt")
subject_test <- read.table("subject_test.txt")
x_train <- read.table("X_train.txt")
y_train <- read.table("y_train.txt")
subject_train <- read.table("subject_train.txt")
activity_labels <- read.table("activity_labels.txt")
features <- read.table("features.txt")

##Merge test and train data
x_data <- rbind(x_test, x_train)
y_data <- rbind(y_test, y_train)
subject_data <- rbind(subject_test, subject_train)

##Assign column names
colnames(x_data) = features[, 2]
colnames(y_data) = "activity"
colnames(subject_data) = "subject"

##Extract only the measurements on the mean and standard deviation for each measurement
mean_and_std_features <- grep("-(mean|std)\\(\\)", features[, 2])
x_data <- x_data[ ,mean_and_std_features] 

##Merge all data to create single data set
AllData <- cbind(y_data, subject_data, x_data)

##Use descriptive activity names to name the activities in the data set
AllData[, 1] <- activity_labels[AllData[, 1], 2]

##Count number of columns of AllData
ncol(AllData)
##68

##Create a tidy data set with the average of each variable for each activity and each subject
averaged_data <- ddply(AllData, .(subject, activity), function(x) colMeans(x[, 3:68]))

##Create text file
write.table(averaged_data, "averaged_data.txt", row.names = FALSE, quote = FALSE)