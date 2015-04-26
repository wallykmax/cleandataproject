# CodeBook

## Before you read this document

Before reading this document, please read the README.md file for the basics of 
the data and processing. In particular, how to obtain the the original data and
where to save it, so the script "run_analysis.R" can run as designed.

## Processing the data

That original data is described in detail in a README.txt file which is part 
of the data set. The two parts of the original data set "test" and "train" are 
combined in a single data set, which is stored in "UCI HAR Dataset Merged". 
That data set is created by the "run_analysis.R" scrpt. This merged data set 
has exactly the same structure, except that it combines the two pieces of the 
original one.

## The final data product

Using this merged data set we produce a final summary data set, that provides 
a simplified view of the results. The script "run_analysis.R" performs all 
the tasks, and has detailed comments on each step. Please read the comments in 
the code if you need to find out more about the analysis.

The summary data set contains averages for a given subject and activity, which
are indicated by the columns "subject" and "activity_label", for the variables
in the columns, whose names are repeated below. Notice that the numbers are the
averages and not the values given in the original data set. We use the same 
names for easier reference.

The data set is saved as "data_summaty.txt"

"subject"                     
"activity_label"             
"tBodyAcc-mean()-X"           
"tBodyAcc-mean()-Y"          
"tBodyAcc-mean()-Z"           
"tGravityAcc-mean()-X"       
"tGravityAcc-mean()-Y"        
"tGravityAcc-mean()-Z"       
"tBodyAccJerk-mean()-X"       
"tBodyAccJerk-mean()-Y"      
"tBodyAccJerk-mean()-Z"       
"tBodyGyro-mean()-X"         
"tBodyGyro-mean()-Y"          
"tBodyGyro-mean()-Z"         
"tBodyGyroJerk-mean()-X"      
"tBodyGyroJerk-mean()-Y"     
"tBodyGyroJerk-mean()-Z"      
"tBodyAccMag-mean()"         
"tGravityAccMag-mean()"       
"tBodyAccJerkMag-mean()"     
"tBodyGyroMag-mean()"         
"tBodyGyroJerkMag-mean()"    
"fBodyAcc-mean()-X"           
"fBodyAcc-mean()-Y"          
"fBodyAcc-mean()-Z"           
"fBodyAccJerk-mean()-X"      
"fBodyAccJerk-mean()-Y"       
"fBodyAccJerk-mean()-Z"      
"fBodyGyro-mean()-X"          
"fBodyGyro-mean()-Y"         
"fBodyGyro-mean()-Z"          
"fBodyAccMag-mean()"         
"fBodyBodyAccJerkMag-mean()"  
"fBodyBodyGyroMag-mean()"    
"fBodyBodyGyroJerkMag-mean()" 
"tBodyAcc-std()-X"           
"tBodyAcc-std()-Y"            
"tBodyAcc-std()-Z"           
"tGravityAcc-std()-X"         
"tGravityAcc-std()-Y"        
"tGravityAcc-std()-Z"         
"tBodyAccJerk-std()-X"       
"tBodyAccJerk-std()-Y"        
"tBodyAccJerk-std()-Z"       
"tBodyGyro-std()-X"           
"tBodyGyro-std()-Y"          
"tBodyGyro-std()-Z"           
"tBodyGyroJerk-std()-X"      
"tBodyGyroJerk-std()-Y"       
"tBodyGyroJerk-std()-Z"      
"tBodyAccMag-std()"           
"tGravityAccMag-std()"       
"tBodyAccJerkMag-std()"       
"tBodyGyroMag-std()"         
"tBodyGyroJerkMag-std()"      
"fBodyAcc-std()-X"           
"fBodyAcc-std()-Y"            
"fBodyAcc-std()-Z"           
"fBodyAccJerk-std()-X"        
"fBodyAccJerk-std()-Y"       
"fBodyAccJerk-std()-Z"        
"fBodyGyro-std()-X"          
"fBodyGyro-std()-Y"           
"fBodyGyro-std()-Z"          
"fBodyAccMag-std()"           
"fBodyBodyAccJerkMag-std()"  
"fBodyBodyGyroMag-std()"      
"fBodyBodyGyroJerkMag-std()"
