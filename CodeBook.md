#Getting and Cleaning Data Course Project Code Book

*Haroon Taylor*

##Experimental Overview

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial (X, Y, Z) linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

##Variables, Data and Transformations

- `x_test`- Contains data from "X_test.txt"
- `y_test`- Contains data from "y_test.txt"
- `subject_test` - Contains data from "subject_test.txt"
- `x_train`- Contains data from "X_train.txt"
- `y_train`- Contains data from "y_train.txt"
- `subject_train`- Contains data from "subject_train.txt"
- `activity_labels` - Contains data from "activity_labels.txt"
- `features` - Contains data from "features.txt"
- `mean_and_std_features` - Finds all columns relating to mean and standard deviation
- `x_data` - Merge of `x_test` and `x_train` to give all raw experimental data
  - `features` used to edit column names 
  - `mean_and_std_features` used to select wanted columns
- `y_data` - Merge of `y_test` and `y_train` to give all activity ID data
  - column name changed to "activity"
- `subject_data` - Merge of `subject_test` and `subject_train` to give all subject 
  - column name changed to "subject"
- `AllData` - Merge of `x_data`, `y_data` and `subject_data` to give complete data set
  - `activity_labels` used to change activity ID to activity names
- `averaged_data` - A tidy data set with the average of each variable for each activity and each subject
 - `AllData` used to calculated means


