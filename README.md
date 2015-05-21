# Get and Clean Project
This repository contains files required for a class project related to the Getting and Cleaning Data course from JHU. The script is called "run_analysis.R" and completes the following steps to correspond with the project instructions.  The script has four basic sections: read the source files, update labels/filter columns, merge data sets/rename activities and group by subject/activity.  The script does not necessarily follow the implied order in the instructions but the result is a wide, tidy data set with 180 rows and 88 variables.

## Class Project Step vs. R script approach
### 1. Merge the training and the test sets to create one data set.
* I performed project steps 2, 3, 4 before completing this merge step as I wanted to monitor the label updates, column extracts and observation counts along the way. 
* Section 1 of the R script uses the library() function to load packages such as plyr, dplyr, gdata to leverage some functions. This section reads the source files into the working directory. Since the source files are ".txt" files, the read.table function is leveraged to create data frames for 8 source files: X_test.txt, X_train.txt, y_test.txt, y_train.txt, activity_labels.txt, features.txt, subject_test.txt, subject_train.txt). None of the files had headers and separators were spaces in the files.
* Section 2 of the R script was run next to focus on cleaning up labels and extracting columns (details below).
* Section 3 of the R script merges data frames in a particular sequence so that I could monitor rows and columns along the way. The first step in the merge process used the cbind() function to combine respective data frames for subjects, activities and measurements for each respective test and training data frame. The last merge step used rbind() to add all rows from the test and training dataframes together into one data set.
  
### 2. Extract only the measurements on the mean and standard deviation for each measurement. 
* I chose to update labels for all variables first. I used the transpose function to get the measurement variable labels from the features data frame. I used this subset to assign names to all columns in the test and training data frames.
* After all labels were updated, I used the grepl() function to extract columns that had the string "std" or "mean" but leveraged regular expressions feature to find all forms of the mean (ex. "M" or "m"). As I was not familar with the variables and wanted to be conservative, I kept all measurements with the term "mean".
* Lastly, I updated the variable names for the activity and subject data frames.

### 3. Use descriptive activity names to name the activities in the data set
*  
* 

### 4. Appropriately labels the data set with descriptive variable names. 
* The features.txt file contains the labels for the variable names. Since the file created a two variable/column data frame, I chose to use the subset the second column and use the transpose function to store in an object. 
* Next, I 
### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
