Feature Variables
=================
The following comes from the original data set decriptions.  It is included here as gives the 
user a basic understanding of the features and data collected: 

 "The features selected for this database come from the accelerometer and gyroscope 3-axial raw 
  signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were 
  captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd 
  order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, 
  the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc
  -XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 
  0.3 Hz. 

  Subsequently, the body linear acceleration and angular velocity were derived in time to obtain 
  Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three
  -dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, 
  tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

  Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc
  -XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note 
  the 'f' to indicate frequency domain signals). 

  These signals were used to estimate variables of the feature vector for each pattern:  
  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."

It was also noted in the original UCI README file

  "Notes: 
  ======
  - Features are normalized and bounded within [-1,1]."


The original feature variable names were left basically intact with only extraneuous"()" removed. 
The "-" and psuedo camel captalization was left for ease of reading/differentiating 
variable names.

The following variables can be found in the final data set, tidydata:

[1]Subject ID: 
    1:30

[2]Activity (tran)
    WALKING
    WALKING_UPSTAIRS
    WALKING_DOWNSTAIRS
    SITTING
    STANDING
    LAYING

[3-68] Feature Variable Means

Note: Each variable will also be noted as a mean or standard deviation denoted by 'mean' 
and 'std', respectively. Variable names with suffix XYZ will have three variables, 
one for each direction on the X, Y and Z axes. 

i.e value of variable 'tBodyAcc-mean-Y' would be the mean of the tBodyAcc mean in the Y axis

This results in 66 feature variable means.  

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

