##Read source files in working directory
library(plyr)
library(dplyr)
library(gdata)
testdata <- read.table(file="X_test.txt", header=FALSE, sep="")
traindata <-read.table(file="X_train.txt", header=FALSE, sep="")
testlabels <- read.table(file="y_test.txt", header=FALSE, sep="")
trainlabels <- read.table(file="y_train.txt", header=FALSE, sep="")
activitylabel <-read.table(file="activity_labels.txt", header=FALSE, sep="")
features <-read.table(file="features.txt", header=FALSE, sep="")
testsubjects <-read.table(file="subject_test.txt", header=FALSE, sep="")
trainsubjects <-read.table(file="subject_train.txt", header=FALSE, sep="")

##Update labels and filter for columns containing Mean or Std
features <- t(features$V2) ## transpose rows to column names
names(testdata) <- features ## rename variables
names(traindata) <- features ## rename variables
testdata <-testdata[,grepl("std|[Mm]ean", colnames(testdata))]
traindata <-traindata[,grepl("std|[Mm]ean", colnames(traindata))]
names(testlabels) <- "activity" ; names(trainlabels) <- "activity"
names(testsubjects) <- "subject" ; names(trainsubjects) <- "subject"

##Merge two final data sets, sort rows, rename activity IDs with labels
mergetest <- cbind(testsubjects,testlabels,testdata)
mergetrain <- cbind(trainsubjects,trainlabels, traindata)
mergedata <- rbind(mergetest, mergetrain)
mergedata <-arrange(mergedata, subject, activity) ## sort by subject then activity
mergedata$activity <- as.factor(mergedata$activity) ##convert to factor for mapvalue func
mergedata$activity <- mapvalues(mergedata$activity,from= c("1","2","3","4","5","6"), to= 
  c("walking", "walkingupstairs","walkingdownstairs", "sitting", "standing", "laying"))

##Group by subject then by activity; compute average for all measurements (mean/std)
finaldata <- ddply(mergedata, .(subject, activity), colwise(mean))
write.table(finaldata, file="finaldata.txt", row.name=FALSE)
