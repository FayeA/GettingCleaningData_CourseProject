
##
## PREPARATION STEPS
##

# Step 1 - Manually download the zip file
#        - URL = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#

# Step 2 - Manually unzip the files. Manually move the following files to the same directory as the run_analysis.R script
#            - activity_labels.txt
#            - features.txt
#            - subject_test.txt
#            - X_test.txt, 
#            - Y_test.txt
#            - subject_train.txt
#            - X_train.txt
#            - Y_train.txt


# Step 3 - Load the files into the respective dataframes

    activityLabels <- read.table("activity_labels.txt")
    features <- read.table("features.txt")
    subjectTest <- read.table("subject_test.txt")
    xTest <- read.table("X_test.txt")
    yTest <- read.table("Y_test.txt")
    subjectTrain <- read.table("subject_train.txt")
    xTrain <- read.table("X_train.txt")
    yTrain <- read.table("Y_train.txt")

    
##    
## PROCESSING THE DATA AS PER THE REQUIREMENTS OF THE PROJECT
##    
## 1. MERGE THE TRAINING AND TEST DATA SETS INTO ONE DATA SET
##    - Steps 4 to 9
## 2. EXTRACT ONLY THE MEASUREMENTS ON THE MEAN AND STANDARD DEVIATION   
##    - Step 5  
## 3. USE DESCRIPTIVE ACTIVITY NAMES TO NAME THE ACTIVITIES IN THE DATASET
##    - Step 8
## 4. APPROPRIATELY LABEL THE DATA SET WITH DESCRIPTIVE VARIABLE NAMES
##    - Step 4
## 5. CREATE A SECOND, INDEPENDENT TIDY DATA SET WITH THE AVERAGE
##    OF EACH VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT
##    - Step 9
##    
    
# Step 4 - Add features vector as column name for xTest and xTrain
#        - Add column name of "Subject" to subjectTest and subjectTrain
#        - Add column name of "Activity" to yTest and yTrain

      
    colnames(xTest) <- features[,2]
    colnames(xTrain) <- features[,2]
    
    colnames(subjectTest) <- "Subject"
    colnames(subjectTrain) <- "Subject"
    
    colnames(yTest) <- "Activity"
    colnames(yTrain) <- "Activity"
    

# Step 5 - Extract only the measurements on the mean and standard deviation
#          for each measurement, using subset() and grepl()
    
    featuresToExtract <- subset(features,grepl("*mean\\(\\)*",V2) | grepl("*std\\(\\)*",V2))
    x2Test <- xTest[,featuresToExtract$V1]
    x2Train <- xTrain[,featuresToExtract$V1]

    
# Step 6 - cbind subjectTest, yTest, and x2Test. Save as dataTest
#        - cbind subjectTrain, yTrain, and x2Train. Save as dataTrain
    
    dataTest <- cbind(subjectTest,yTest,x2Test)
    dataTrain <- cbind(subjectTrain,yTrain,x2Train)
    
    
# Step 7 - rbind dataTest and dataTrain to make one dataset combinedData
    
    combinedData <- rbind(dataTest, dataTrain)

    
# Step 8 - Use factor() to replace Activity code with activity description
  
    combinedData$Activity <- factor(combinedData$Activity,labels=activityLabels$V2)
  
    
    
# Step 9 - Using combinedData created above
#           apply ddply() and numcolwise() to create
#           a second, independent tidy data set
#           with the average of each variable for each activity
#           and each subject.
#         - Generate a txt file using this dataset.

    library(plyr)
    tidyData <- ddply(combinedData,.(Subject,Activity),numcolwise(mean))
    write.csv(tidyData, "tidyData.csv")
    