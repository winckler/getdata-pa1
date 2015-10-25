# CodeBook
_Gabriel A. von Winckler_

This is the CodeBook for the Course Project on Getting and Cleaning Data, a course available on Coursera from Johns Hopkins.

## Operations

1.  Download
1.  Extract (unzip)
1.  On __test__ data
    1.  Read _features_ values
    1.  Add labels to the values
    1.  Correlate with _activity_
    1.  Correlate with _subject_
1.  On __train__ data
    1.  Read _features_ values
    1.  Add labels to the values
    1.  Correlate with _activity_
    1.  Correlate with _subject_
1.  Join both datasets
1.  Translate _activities_ reference numbers to labels
1.  Reduce the dataset preserving only _features_ representing __mean__ or __std. dev.__
1.  Aggregate by _activity_ and _subject_
1.  Save the aggregated data.

## Variables

1.  "feature"                    
1.  "subject"                    
1.  "tBodyAcc-mean()-X"          
1.  "tBodyAcc-mean()-Y"          
1.  "tBodyAcc-mean()-Z"          
1.  "tBodyAcc-std()-X"           
1.  "tBodyAcc-std()-Y"           
1.  "tBodyAcc-std()-Z"           
1. "tGravityAcc-mean()-X"       
1. "tGravityAcc-mean()-Y"       
1. "tGravityAcc-mean()-Z"       
1. "tGravityAcc-std()-X"        
1. "tGravityAcc-std()-Y"        
1. "tGravityAcc-std()-Z"        
1. "tBodyAccJerk-mean()-X"      
1. "tBodyAccJerk-mean()-Y"      
1. "tBodyAccJerk-mean()-Z"      
1. "tBodyAccJerk-std()-X"       
1. "tBodyAccJerk-std()-Y"       
1. "tBodyAccJerk-std()-Z"       
1. "tBodyGyro-mean()-X"         
1. "tBodyGyro-mean()-Y"         
1. "tBodyGyro-mean()-Z"         
1. "tBodyGyro-std()-X"          
1. "tBodyGyro-std()-Y"          
1. "tBodyGyro-std()-Z"          
1. "tBodyGyroJerk-mean()-X"     
1. "tBodyGyroJerk-mean()-Y"     
1. "tBodyGyroJerk-mean()-Z"     
1. "tBodyGyroJerk-std()-X"      
1. "tBodyGyroJerk-std()-Y"      
1. "tBodyGyroJerk-std()-Z"      
1. "tBodyAccMag-mean()"         
1. "tBodyAccMag-std()"          
1. "tGravityAccMag-mean()"      
1. "tGravityAccMag-std()"       
1. "tBodyAccJerkMag-mean()"     
1. "tBodyAccJerkMag-std()"      
1. "tBodyGyroMag-mean()"        
1. "tBodyGyroMag-std()"         
1. "tBodyGyroJerkMag-mean()"    
1. "tBodyGyroJerkMag-std()"     
1. "fBodyAcc-mean()-X"          
1. "fBodyAcc-mean()-Y"          
1. "fBodyAcc-mean()-Z"          
1. "fBodyAcc-std()-X"           
1. "fBodyAcc-std()-Y"           
1. "fBodyAcc-std()-Z"           
1. "fBodyAccJerk-mean()-X"      
1. "fBodyAccJerk-mean()-Y"      
1. "fBodyAccJerk-mean()-Z"      
1. "fBodyAccJerk-std()-X"       
1. "fBodyAccJerk-std()-Y"       
1. "fBodyAccJerk-std()-Z"       
1. "fBodyGyro-mean()-X"         
1. "fBodyGyro-mean()-Y"         
1. "fBodyGyro-mean()-Z"         
1. "fBodyGyro-std()-X"          
1. "fBodyGyro-std()-Y"          
1. "fBodyGyro-std()-Z"          
1. "fBodyAccMag-mean()"         
1. "fBodyAccMag-std()"          
1. "fBodyBodyAccJerkMag-mean()" 
1. "fBodyBodyAccJerkMag-std()"  
1. "fBodyBodyGyroMag-mean()"    
1. "fBodyBodyGyroMag-std()"     
1. "fBodyBodyGyroJerkMag-mean()"
1. "fBodyBodyGyroJerkMag-std()" 