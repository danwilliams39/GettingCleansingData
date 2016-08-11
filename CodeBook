# CodeBook

This is the code book used to describe the variables used in the getting and cleansing data course. 

## The data source

* Original data location - https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Original description of the data - http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## The data

The dataset includes the following files:

* 'README.txt'

* 'features_info.txt': Descriptions of the variables used

* 'features.txt': List of all features

* 'activity_labels.txt': Links the class labels to the respective activity label.

* 'train/X_train.txt': Data set containing the training data

* 'train/y_train.txt': Labels for the training data set

* 'test/X_test.txt': Data set containing the test data

* 'test/y_test.txt': Labels for the test data set

The following files are available for the train and test data. Their descriptions are equivalent.

* 'train/subject_train.txt': The identification of each individual who performed the training data

* 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the accelerometer 

* 'train/Inertial Signals/body_acc_x_train.txt': The acceleration signal after subtracting the gravity from the total acceleration.

* 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope in radians/second


## Transformation details

There are 5 stages of analysis:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## How ```run_analysis.R``` implements the above steps:

* Download the data zip file
* Load all data into the working directory
* Read data into R console
* Load the features and activity labels and read into R
* Extract the correct data
* Process the test and training data separately
* Merge data set to create 1 tidy dataset
