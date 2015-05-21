# Get and Clean Project
This repository contains files required for a class project related to the Getting and Cleaning Data course from JHU. The script is called "run_analysis.R" and completes the following steps to correspond with the project instructions.

## Class Project Step vs. R script approach
### 1: Merge the training and the test sets to create one data set.
  * The library() function was used to load packages such as plyr, dplyr, gdata to leverage some functions.
  * After downloading/unzipping the source files into the working directory, reviewing the content of the files with a notepad editor will get you familiar with the file content and format. Since the source files are ".txt" files, the read.table function is leveraged to create data frames for 8 source files: X_test.txt, X_train.txt, y_test.txt, y_train.txt, activity_labels.txt, features.txt, subject_test.txt, subject_train.txt).
  
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
