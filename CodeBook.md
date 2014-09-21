#Codebook

This document describes the variables, the data, and the work performed to cleanup the raw data to produce tidyDataset.csv.

## Variables

*Subject - The subject ID the volunteers; Integer value ranging from 1 to 30  
*Activity - The activity performed by the volunteer. Could be one of the following:  
    +WALKING  
    +WALKING_UPSTAIRS  
    +WALKING_DOWNSTAIRS  
    +SITTING  
    +STANDING  
    +LAYING  

The following variables describe the average value by activity, by patient, of the mean value (denoted by "mean()") and standard deviation (denoted by "std()") for each feature being measured.

For details regarding these features, please see features_info.txt, which is part of http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip
  *tBodyAcc-mean()-X  
  *tBodyAcc-mean()-Y  
  *tBodyAcc-mean()-Z  
  *tBodyAcc-std()-X  
  *tBodyAcc-std()-Y  
  *tBodyAcc-std()-Z  
  *tGravityAcc-mean()-X  
  *tGravityAcc-mean()-Y  
  *tGravityAcc-mean()-Z  
  *tGravityAcc-std()-X  
  *tGravityAcc-std()-Y  
  *tGravityAcc-std()-Z  
  *tBodyAccJerk-mean()-X  
  *tBodyAccJerk-mean()-Y  
  *tBodyAccJerk-mean()-Z  
  *tBodyAccJerk-std()-X  
  *tBodyAccJerk-std()-Y  
  *tBodyAccJerk-std()-Z  
  *tBodyGyro-mean()-X  
  *tBodyGyro-mean()-Y  
  *tBodyGyro-mean()-Z  
  *tBodyGyro-std()-X  
  *tBodyGyro-std()-Y  
  *tBodyGyro-std()-Z  
  *tBodyGyroJerk-mean()-X  
  *tBodyGyroJerk-mean()-Y  
  *tBodyGyroJerk-mean()-Z  
  *tBodyGyroJerk-std()-X  
  *tBodyGyroJerk-std()-Y  
  *tBodyGyroJerk-std()-Z  
  *tBodyAccMag-mean()  
  *tBodyAccMag-std()  
  *tGravityAccMag-mean()  
  *tGravityAccMag-std()  
  *tBodyAccJerkMag-mean()  
  *tBodyAccJerkMag-std()  
  *tBodyGyroMag-mean()  
  *tBodyGyroMag-std()  
  *tBodyGyroJerkMag-mean()  
  *tBodyGyroJerkMag-std()  
  *fBodyAcc-mean()-X  
  *fBodyAcc-mean()-Y  
  *fBodyAcc-mean()-Z  
  *fBodyAcc-std()-X  
  *fBodyAcc-std()-Y  
  *fBodyAcc-std()-Z  
  *fBodyAccJerk-mean()-X  
  *fBodyAccJerk-mean()-Y  
  *fBodyAccJerk-mean()-Z  
  *fBodyAccJerk-std()-X  
  *fBodyAccJerk-std()-Y  
  *fBodyAccJerk-std()-Z  
  *fBodyGyro-mean()-X  
  *fBodyGyro-mean()-Y  
  *fBodyGyro-mean()-Z  
  *fBodyGyro-std()-X  
  *fBodyGyro-std()-Y  
  *fBodyGyro-std()-Z  
  *fBodyAccMag-mean()  
  *fBodyAccMag-std()  
  *fBodyBodyAccJerkMag-mean()  
  *fBodyBodyAccJerkMag-std()  
  *fBodyBodyGyroMag-mean()  
  *fBodyBodyGyroMag-std()  
  *fBodyBodyGyroJerkMag-mean()  
  *fBodyBodyGyroJerkMag-std()  



## Data Collection

The raw data that was used to produced tidyDataset.csv is the "Human Activity Recognition Using Smartphones Data Set".

This raw data were downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.  The details about this data can be found in: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  

Of the files contained in the zip file specified above, Only the following files were used in this analysis:  
- activity_labels.txt: contains the activity code and activity description
- features.txt: contains the list of all features  
- subject_test.txt: identifies the subject who performed the activity for each window sample  
- X_test.txt: test set  
- Y_test.txt: test labels  
- subject_train.txt: identifies the subject who performed the activity for each window sample  
- X_train.txt: train set  
- Y_train.txt: train labels  


## Data Transformation
The script run_analysis.R was run on the files specified above to produce tidyData.csv.


