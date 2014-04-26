# The following script can be sourced in full or run in sections

## Read in test and train data files
## X file contains features, Y file contains activity code, subject file contains 
## subject ID

  xtest<-read.table("./UCI HAR Dataset/test/X_test.txt", sep="")
  ytest<-read.table("./UCI HAR Dataset/test/Y_test.txt", sep="")
  subtest<-read.table("./UCI HAR Dataset/test/subject_test.txt", sep="")
  
  xtrain<-read.table("./UCI HAR Dataset/train/X_train.txt", sep="")
  ytrain<-read.table("./UCI HAR Dataset/train/Y_train.txt", sep="")
  subtrain<-read.table("./UCI HAR Dataset/train/subject_train.txt", sep="")

## Read in feature file for names of feature variables
  
  features<- read.table("./UCI HAR Dataset/features.txt", sep="")

## Rename column headings for x, y, and subject files for test and train data 
  
  colnames<-features[,2]
  names(xtest)<-colnames
  names(ytest)<-c("activity")
  names(subtest)<-c("subject")
 
  names(xtrain)<-colnames
  names(ytrain)<-c("activity")
  names(subtrain)<-c("subject")
  
  
## Combine test and train data to single data frame 
  
  testdf<-cbind(subtest, ytest, xtest)
  traindf<-cbind(subtrain, ytrain, xtrain)
  fulldf<-rbind(testdf, traindf)

## Change activty Code to friendlier activity label from UCI dataset
  
  actlabel<- read.table("./UCI HAR Dataset/activity_labels.txt", sep="")
  fulldf$activity<-actlabel$V2[fulldf$activity]
  
## Extract subject, activity and mean and standard deviation feature variables.
## Selected feature variables will be identified as only those containing
## the exact string "mean()" or "std()"
  
  goodcol<-c(names(fulldf[1:2]), names(fulldf[(grepl("mean()", names(fulldf), fixed=TRUE)|
               grepl("std()", names(fulldf), fixed=TRUE))]))
  trimdf<-fulldf[, goodcol]

  
## Creating Tidy dataset by calculating variable means by subject and activity.
## Install necessary "reshape2" package for needed functions
  
  install.packages("reshape2")
  library(reshape2)
  trimdfmelt <- melt(trimdf,(id.vars=c("activity","subject")))
  trimdftidy <- dcast(trimdfmelt, subject + activity ~ variable, mean)
  
## Remove "()" from variable names. Leaving "-" and psuedo camal captalization
## for ease of reading/differentiating variable names.
  
 names(trimdftidy)<-sub("\\()", "", names(trimdftidy))

## Write final dataframe to text file   
  
  write.table(trimdftidy, "tidyDataSet.txt", row.names=FALSE)
