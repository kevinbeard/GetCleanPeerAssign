 * Introduction
 
The purpose of this project is to aggregate, simplify and summarize the Human Activity 
Recognition Using Smartphones Dataset (Version 1.0) provided by the UCI Machine Learning
Repository. (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using
+Smartphones)  

The original dataset was created from observations of 30 subjects, each 
performing six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING
, LAYING) and contains 561 feature variables. The original data set was then partitioned into test and train data sets. 

This project will aggregate the test and training data sets and trim the 561 feature 
variables to only include the mean and standard deviation of 33 variables ( see CodeBook.md
for details).  Finally, these variables will summarized as a data set with the average of 
each variable for each activity and each subject.

The final data set will have activity codes replaced with more descriptive labels and 
variable names will be "cleaned" for easier reading and usage.

The following files are provided in this project:

  * README.md (this file)
  * run_anaysis.R (R sctipt file that will perform the above mentioned activities)
  * CodeBook.md (Includes details of the remaining 66 feature variables in the fianl dataset)

 
 * Requirements
 
The required input data set for this project can be found in a zip file located at the 
following address: 
 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 
This zip file should be extracted in the project working directory. The extraction will 
create a directory called "UCI HAR Dataset" that will include all necessary files for the 
project.

The R script ( run_anaysis.R ) can be sourced performing all necessary analysis.  The 
script is well commented detailing code activities.  The script comments should be 
referenced for specicifc detail regarding the analysis.  The script will also install the 
only package required ( reshape2 ) beyond R base packages.


