# Code Book for Get and Clean Project
The following is a description of the final variables used in this project and calculations performed to get to the final tidy data set created by the R script.

## Final Data set introduction
* The data used in this project was captured from an experiment called "Human Activity Recognition Using Smartphones Dataset Version 1.0" completed by Smartlab. More information about the experiment can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
* The source files can be downloaded from this link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* The specific files used from the source files were: X_test.txt, X_train.txt, y_test.txt, y_train.txt, activity_labels.txt, features.txt, subject_test.txt, subject_train.txt. 
* Original detailed descriptions of all fields are in the original files called "README.txt" and "features_info.txt".  There were 30 subjects in the study that performed 6 activities where 561 measurements were captured or calculated.
* For each record in this final data set, there are three types of variables: subject id, activity name and measurement.  The original "features.txt" source file consists of 561 measurements, however only variables for the Mean or Standard Deviation were used per the project instructions. Thus, 86 variables that contained the string of "std" or variant of a "mean" are provided for each record. In total, 88 variables are provided for each record: 1 for subject, 1 for activity and 86 measurements.  The final tidy data set is 180 rows with 88 columns representing the average of each variable for each activity and each subject.
  
### 2. Variable 1: This is the ID for the subject that completed the activities.
* Variable name: subject
* Class: integer
* Valid range: 1 through 30

### 3. Variable 2: This is the name of the activity that the subject completed. 
* Variable name: activity
* Class: factor
* Valid values: walking, walkingupstairs, walkingdownstairs, sitting, standing, laying

### 4. Variables 3 through 88 (86 of these); The measurements come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. For details on how the data was captured and calculated please refer to the original source file called "features-info.txt".
* Variable names used for this project: 
1   tBodyAcc-mean()-X
2	tBodyAcc-mean()-Y
3	tBodyAcc-mean()-Z
4	tBodyAcc-std()-X
5	tBodyAcc-std()-Y
6	tBodyAcc-std()-Z
7	tGravityAcc-mean()-X
8	tGravityAcc-mean()-Y
9	tGravityAcc-mean()-Z
10	tGravityAcc-std()-X
11	tGravityAcc-std()-Y
12	tGravityAcc-std()-Z
13	tBodyAccJerk-mean()-X
14	tBodyAccJerk-mean()-Y
15	tBodyAccJerk-mean()-Z
16	tBodyAccJerk-std()-X
17	tBodyAccJerk-std()-Y
18	tBodyAccJerk-std()-Z
19	tBodyGyro-mean()-X
20	tBodyGyro-mean()-Y
21	tBodyGyro-mean()-Z
22	tBodyGyro-std()-X
23	tBodyGyro-std()-Y
24	tBodyGyro-std()-Z
25	tBodyGyroJerk-mean()-X
26	tBodyGyroJerk-mean()-Y
27	tBodyGyroJerk-mean()-Z
28	tBodyGyroJerk-std()-X
29	tBodyGyroJerk-std()-Y
30	tBodyGyroJerk-std()-Z
31	tBodyAccMag-mean()
32	tBodyAccMag-std()
33	tGravityAccMag-mean()
34	tGravityAccMag-std()
35	tBodyAccJerkMag-mean()
36	tBodyAccJerkMag-std()
37	tBodyGyroMag-mean()
38	tBodyGyroMag-std()
39	tBodyGyroJerkMag-mean()
40	tBodyGyroJerkMag-std()
41	fBodyAcc-mean()-X
42	fBodyAcc-mean()-Y
43	fBodyAcc-mean()-Z
44	fBodyAcc-std()-X
45	fBodyAcc-std()-Y
46	fBodyAcc-std()-Z
47	fBodyAcc-meanFreq()-X
48	fBodyAcc-meanFreq()-Y
49	fBodyAcc-meanFreq()-Z
50	fBodyAccJerk-mean()-X
51	fBodyAccJerk-mean()-Y
52	fBodyAccJerk-mean()-Z
53	fBodyAccJerk-std()-X
54	fBodyAccJerk-std()-Y
55	fBodyAccJerk-std()-Z
56	fBodyAccJerk-meanFreq()-X
57	fBodyAccJerk-meanFreq()-Y
58	fBodyAccJerk-meanFreq()-Z
59	fBodyGyro-mean()-X
60	fBodyGyro-mean()-Y
61	fBodyGyro-mean()-Z
62	fBodyGyro-std()-X
63	fBodyGyro-std()-Y
64	fBodyGyro-std()-Z
65	fBodyGyro-meanFreq()-X
66	fBodyGyro-meanFreq()-Y
67	fBodyGyro-meanFreq()-Z
68	fBodyAccMag-mean()
69	fBodyAccMag-std()
70	fBodyAccMag-meanFreq()
71	fBodyBodyAccJerkMag-mean()
72	fBodyBodyAccJerkMag-std()
73	fBodyBodyAccJerkMag-meanFreq()
74	fBodyBodyGyroMag-mean()
75	fBodyBodyGyroMag-std()
76	fBodyBodyGyroMag-meanFreq()
77	fBodyBodyGyroJerkMag-mean()
78	fBodyBodyGyroJerkMag-std()
79	fBodyBodyGyroJerkMag-meanFreq()
80	angle(tBodyAccMean,gravity)
81	angle(tBodyAccJerkMean),gravityMean)
82	angle(tBodyGyroMean,gravityMean)
83	angle(tBodyGyroJerkMean,gravityMean)
84	angle(X,gravityMean)
85	angle(Y,gravityMean)
86	angle(Z,gravityMean)
* Class: numeric
* Valid values: -0.9976661 through 0.9745087

### 5. Calculations performed
* The final data set created by the R script only performs one calculation on the 86 measurements. The R script computes the Mean for each of the 86 measurements by activity and subject combination using the ddply() function. The function splits the table by subject and activity, computes the mean for all the numeric columns(ie. the measurements) and combines the results into a tidy 180 row data set.
