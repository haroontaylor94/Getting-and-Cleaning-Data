# Getting and Cleaning Data Course Project 

Haroon Taylor

## Overview

This is the repository of the R script and documentation files for the Course Project of the John Hopkins University Coursera course "Getting and Cleaning Data"

The [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) was obtained from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

##Course Project instructions

You should create one R script called run_analysis.R that does the following:

1) Merges the training and the test sets to create one data set.

2) Extracts only the measurements on the mean and standard deviation for each measurement. 

3) Uses descriptive activity names to name the activities in the data set.

4) Appropriately labels the data set with descriptive variable names. 

5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Files

`run_analysis.R` contains the code to perform the analysis required for the Course Project. 
The code assumes that all the necessary txt files are in the working directory.

`CodeBook.md` contains information on the variables, data and transformations used to perform the analysis for the Course Project.

`averaged_data.txt` contains the txt file that satisfies the step 5 of the Course Project
