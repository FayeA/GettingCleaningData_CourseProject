# README.md

## COURSE PROJECT for Getting and Cleaning Data

This repository contains the files for the course project for "Getting and Cleaning Data" on Coursera.  

### Overview of the project:
This project requires that the "Human Activity Recognition Using Smartphone Data Set" from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones be processed as per the following requirements:

> You should create one R script called run_analysis.R that does the following  
>    1. Merges the training and the test sets to create one data set.  
>    2. Extracts only the measurements on the mean and standard deviation for each measurement.   
>    3. Uses descriptive activity names to name the activities in the data set  
>    4. Appropriately labels the data set with descriptive variable names.   
>    5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  


### Contents of this repository:

1. README.md - This file. A markdown file that provides a description of this repository, its contents, and how the contents work together

2. run_analysis.R - An R script that describes the processing that was done to the raw dataset in order to produce the tidy dataset. This script can be re-run to reproduce the tidy dataset using the raw data, provided that the manual steps described in the script are also followed.

3. CodeBook.md - A markdown file that provides detailed information about the data and how it was processed.

4. tidyData.csv - A dataset with 180 observations of 68 variables. This is the tidy dataset produced by run_analysis.R.  Please see CodeBook.md for the details regarding this dataset.


### Steps to be taken before running run_analysis.R

The following steps need to be completed prior to running run_analysis.R script.  These steps are also documented in run_analysis.R to ensure that they are done in the event that this file is separated from the R script.

1. Download the zip file using this link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2. Unzip the files and move the following files to the same directory as the run_analysis.R script  
            * activity_labels.txt  
            * features.txt  
            * subject_test.txt  
            * X_test.txt   
            * Y_test.txt  
            * subject_train.txt  
            * X_train.txt  
            * Y_train.txt  

### Note:
For more details regarding the data and the analysis, please see CodeBook.md.
