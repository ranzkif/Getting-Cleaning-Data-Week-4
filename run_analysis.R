#Reads the train data

X_train <-read.table ("./UCI HAR Dataset/train/X_train.txt")
Y_train <-read.table ("./UCI HAR Dataset/train/Y_train.txt")
Subject_train <-read.table ("./UCI HAR Dataset/train/subject_train.txt")

#Reads the test data
X_test <-read.table ("./UCI HAR Dataset/test/X_test.txt")
Y_test <-read.table ("./UCI HAR Dataset/test/Y_test.txt")
Subject_test <-read.table ("./UCI HAR Dataset/test/subject_test.txt")

#Reads the activity data 
activity_labels <- read.table ("./UCI HAR Dataset/activity_labels.txt")

# Reads the features data
features <- read.table ("./UCI HAR Dataset/features.txt")

#1. Merges the training and the test sets to create one data set
Merge_X <-rbind(X_train,X_test)
Merge_Y <-rbind(Y_train,Y_test)
Merge_Subject <-rbind(Subject_train,Subject_test)

#2. Extracts only the measurements on the mean and standard deviation for each measurement.

mean_std <-features[grep("mean|std",features[,2]),]
Merge_X <-Merge_X[,mean_std[,1]]

#3.	Uses descriptive activity names to name the activities in the data set
colnames(Merge_Y) <- "activity"
Merge_Y$activitylabels <- factor(Merge_Y$activity, labels = as.character(activity_labels[,2]))
activitylabels <- Merge_Y[,-1]

#4. Appropriately labels the data set with descriptive variable names.
colnames(Merge_X) <- features[mean_std[,1],2]
