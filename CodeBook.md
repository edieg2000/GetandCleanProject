# Code Book for Get and Clean Project
The following is a description of the final variables used in this project and calculations performed to get to the final tidy data set created by the R script.

## Final Data set introduction
* The data used in this project was captured from an experiment called "Human Activity Recognition Using Smartphones Dataset Version 1.0" completed by Smartlab. More information about the experiment can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
* The source files can be downloaded from this link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* The specific files used from the source files were: X_test.txt, X_train.txt, y_test.txt, y_train.txt, activity_labels.txt, features.txt, subject_test.txt, subject_train.txt. 
* Original detailed descriptions of all fields are in the original files called "README.txt" and "features_info.txt".  There were 30 subjects in the study that performed 6 activities where 561 measurements were captured or calculated.
* For each record in this final data set, there are three types of variables: subject id, activity name and measurement.  The original "features.txt" source file consists of 561 measurements, however only variables for the Mean or Standard Deviation were used per the project instructions. Thus, 86 variables that contained the string of "std" or variant of a "mean" are provided for each record. In total, 88 variables are provided for each record: 1 for subject, 1 for activity and 86 measurements.  The final tidy data set is 180 rows with 88 columns representing the average of each variable for each activity and each subject.
  
### Variable 1: This is the ID for the subject that completed the activities.
* Variable name: subject
* Class: integer
* Valid range: 1 through 30

### Variable 2: This is the name of the activity that the subject completed. 
* Variable name: activity
* Class: factor
* Valid values: walking, walkingupstairs, walkingdownstairs, sitting, standing, laying

### Variables 3 through 88 (86 of these); The measurements come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. For details on how the data was captured and calculated please refer to the original source file called "features-info.txt".
* Variable position and names used for this project: 
* 3 tBodyAcc-mean()-X
* 4	tBodyAcc-mean()-Y
* 5	tBodyAcc-mean()-Z
* 6	tBodyAcc-std()-X
* 7	tBodyAcc-std()-Y
* 8	tBodyAcc-std()-Z
* 9	tGravityAcc-mean()-X
* 10	tGravityAcc-mean()-Y
* 11	tGravityAcc-mean()-Z
* 12	tGravityAcc-std()-X
* 13	tGravityAcc-std()-Y
* 14	tGravityAcc-std()-Z
* 15	tBodyAccJerk-mean()-X
* 16	tBodyAccJerk-mean()-Y
* 17	tBodyAccJerk-mean()-Z
* 18	tBodyAccJerk-std()-X
* 19	tBodyAccJerk-std()-Y
* 20	tBodyAccJerk-std()-Z
* 21	tBodyGyro-mean()-X
* 22	tBodyGyro-mean()-Y
* 23	tBodyGyro-mean()-Z
* 24	tBodyGyro-std()-X
* 25	tBodyGyro-std()-Y
* 26	tBodyGyro-std()-Z
* 27	tBodyGyroJerk-mean()-X
* 28	tBodyGyroJerk-mean()-Y
* 29	tBodyGyroJerk-mean()-Z
* 30	tBodyGyroJerk-std()-X
* 31	tBodyGyroJerk-std()-Y
* 32	tBodyGyroJerk-std()-Z
* 33	tBodyAccMag-mean()
* 34	tBodyAccMag-std()
* 35	tGravityAccMag-mean()
* 36	tGravityAccMag-std()
* 37	tBodyAccJerkMag-mean()
* 38	tBodyAccJerkMag-std()
* 39	tBodyGyroMag-mean()
* 40	tBodyGyroMag-std()
* 41	tBodyGyroJerkMag-mean()
* 42	tBodyGyroJerkMag-std()
* 43	fBodyAcc-mean()-X
* 44	fBodyAcc-mean()-Y
* 45	fBodyAcc-mean()-Z
* 46	fBodyAcc-std()-X
* 47	fBodyAcc-std()-Y
* 48	fBodyAcc-std()-Z
* 49	fBodyAcc-meanFreq()-X
* 50	fBodyAcc-meanFreq()-Y
* 51	fBodyAcc-meanFreq()-Z
* 52	fBodyAccJerk-mean()-X
* 53	fBodyAccJerk-mean()-Y
* 54	fBodyAccJerk-mean()-Z
* 55	fBodyAccJerk-std()-X
* 56	fBodyAccJerk-std()-Y
* 57	fBodyAccJerk-std()-Z
* 58	fBodyAccJerk-meanFreq()-X
* 59	fBodyAccJerk-meanFreq()-Y
* 60	fBodyAccJerk-meanFreq()-Z
* 61	fBodyGyro-mean()-X
* 62	fBodyGyro-mean()-Y
* 63	fBodyGyro-mean()-Z
* 64	fBodyGyro-std()-X
* 65	fBodyGyro-std()-Y
* 66	fBodyGyro-std()-Z
* 67	fBodyGyro-meanFreq()-X
* 68	fBodyGyro-meanFreq()-Y
* 69	fBodyGyro-meanFreq()-Z
* 70	fBodyAccMag-mean()
* 71	fBodyAccMag-std()
* 72	fBodyAccMag-meanFreq()
* 73	fBodyBodyAccJerkMag-mean()
* 74	fBodyBodyAccJerkMag-std()
* 75	fBodyBodyAccJerkMag-meanFreq()
* 76	fBodyBodyGyroMag-mean()
* 77	fBodyBodyGyroMag-std()
* 78	fBodyBodyGyroMag-meanFreq()
* 79	fBodyBodyGyroJerkMag-mean()
* 80	fBodyBodyGyroJerkMag-std()
* 81	fBodyBodyGyroJerkMag-meanFreq()
* 82	angle(tBodyAccMean,gravity)
* 83	angle(tBodyAccJerkMean),gravityMean)
* 84	angle(tBodyGyroMean,gravityMean)
* 85	angle(tBodyGyroJerkMean,gravityMean)
* 86	angle(X,gravityMean)
* 87	angle(Y,gravityMean)
* 88	angle(Z,gravityMean)
* Class: numeric
* Valid values: -0.9976661 through 0.9745087

### Calculations performed within R script
* The final data set created by the R script only performs one calculation on the 86 measurements. The R script computes the Mean for each of the 86 measurements by activity and subject combination using the ddply() function. The function splits the table by subject and activity, computes the mean for all the numeric columns(ie. the measurements) and combines the results into a tidy 180 row data set.
