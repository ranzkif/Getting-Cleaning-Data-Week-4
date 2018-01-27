# Getting-Cleaning-Data-Week-4
THE TASK:
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. 
You will be required to submit: 
1) a tidy data set as described below,
2) a link to a Github repository with your script for performing the analysis, and
3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 

You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following. 
1.	Merges the training and the test sets to create one data set.
2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
3.	Uses descriptive activity names to name the activities in the data set
4.	Appropriately labels the data set with descriptive variable names. 
5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#README.

This repo explains how all of the scripts work and how they are connected.

#Reads the train data.

The data was downloaded and unzip in the local computer prior to scripting of R codes.
The train text file data was read from the directory assigned to the following variables:
  X_train was used for X_train.txt,
  Y_train was used for the Y_train.txt, and
  Subject_train was used for subject_train.txt.

#Reads the test data.

The data was downloaded and unzip in the local computer prior to scripting of R codes.
The test text file data was read from the directory assigned to the following variables:
  X_test was used for X_test.txt,
  Y_test was used for the Y_test.txt, and
  Subject_test was used for subject_test.txt.

#Reads the activity and features data.

The variable assigned for activity_labels.txt and features.txt was activity_labels and features respectively.

#Merging of data

Variable Merge_X holds the merge data for X train and test while Merge_Y holds data for Y train and test. 
Merge_Subject was used for the files merged subject_test and train.

#Descriptive activity names

The script displays the descriptive representation of the numeric data and displays two columns.

#Approriately labels

The data set was combined according mean and standard deviation.





