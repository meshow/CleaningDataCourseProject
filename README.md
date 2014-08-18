CleaningDataCourseProject
=========================

Student: 	Michelle Eshow
Course:  	Getting and Cleaning Data, https://class.coursera.org/getdata-006/
Assignment:	Course project, see
			https://class.coursera.org/getdata-006/human_grading/view/courses/972584/assessments/3/submissions
Due Date: 	August 24, 2014

## Overview

The assignment was to transform raw Samsung Galaxy S accelerometer and gyroscopic measurements into a series of two tidy data sets by following these instructions:

You should create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## Recipe in Detail

First, downloaded dataset https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip on August 12, 2014. Unzipped data onto computer and read all informational files.
Second, wrote script run_analysis.R with function run_analysis() that has the following steps, in this order:
1. Define location and names of all files to be read in:
  * UCI HAR Dataset/train/X_train.txt -- training sensor data
  * UCI HAR Dataset/train/y_train.txt -- activity corresponding to each row of sensor data
  * UCI HAR Dataset/train/subject_train.txt -- human subject number corresponding to each row of sensor data
  * UCI HAR Dataset/test/X_test.txt -- testing sensor data
  * UCI HAR Dataset/test/y_test.txt -- activity corresponding to each row of sensor data
  * UCI HAR Dataset/test/subject_test.txt -- human subject number corresponding to each row of sensor data

2. Read each data file from the previous step into a separate data frame using read.table()

3. Read the features.txt file that provides the feature name of each column of sensor data, into a data frame.

4. Search for all features or column names that have the string "mean()" or "std()". Those features with names containing "meanFreq()" were judged to not be of interest for this study. The search results in 66 columns of features of interest.

5. Copy the training sensor data and test sensor data each to new data frames, keeping only the columns related to mean and standard deviation as described in the prior step.

6. Add the column of activity values for the test and training data to the beginning of their respective reduced data frames.

7. Add the column of subject values for the test and training data to the beginning of their respective reduced data frames. At this point, the test and training data frames each have columns representing: subject, activity, mean and standard deviation features. There are 68 columns of data.

8. Merge the two sets of data with activities and subjects together to form one large data frame of all data, by simply joining their rows together.

9. Simplify the column names of the mean and std features by removing the "()" string at the end of each.

10. Set the names of the columns in the large data frame to be "Subject", "Activity", and the simplified names of all of the mean and standard deviation features.

11. Replace the numerical Activities value in each row with the appropriate name of the activity, based on the content of the activity_labels.txt file. Slightly changed the names to be more readable and grammatically correct (Lying, not laying!)

12. The above steps create the first tidy data set. Write the tidy data set to file EshowTidyData1.txt.

13. For the second tidy data set, aggregate the first set while grouping first by the human Subject identifier, then by the Activity they were doing. While aggregating, compute the mean of each mean and std measurement. This results in one row of mean data per activity per subject. The dimension of the result is 68 columns and 30 subjects * 6 activities or 180 rows.

14. Rename the feature columns to be prefixed with "Mean of" so they are meaningful.

15. Write the second tidy data set to EshowTidyData2.txt

16. Return the second tidy data set to the client.

