## Data 
The dataset is from “Human Activity Recognition Using Smartphones Data Set”

Data description is available at:
- http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project: 
- https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
 

## Variables

- dataTrainY         :  Stores activity label of  data from training set
- dataTrainX         :  Stores training data
- dataTestY          :  Stores activity labels of  data from test set
- dataTestX          :  Stores training data
- dataSubjectTrain   :  Stores Subject ID corresponding to training set
- dataSubjectTest    :  Stores Subject ID corresponding to test set
- dataX              :  merges training and test set
- dataY              :  merges activity labels of training and test set
- dataSubject merges :  Subject ID corresponding to training set and test set
- features           :  stores features names
- activity           :  stores activity names
- “data” variable    :  holds the merged training and the test and includes measurements for each subject and Activity. “data” variable is trimmed to only have columns that have measurements on the mean and standard deviation for each measurement.
- “dataTidy”         :  Tidy data set created with the  average of each variable for each activity and each subject. 

Features Variables of "dataTidy"

 [1] "subject" ID of the subject who performed the activity for each window sample                                   
 [2] "activity" Activity ID                                   
 [3] "TimeBodyAccelerometerMean-X"                
 [4] "TimeBodyAccelerometerMean-Y"                
 [5] "TimeBodyAccelerometerMean-Z"                
 [6] "TimeBodyAccelerometerStd-X"                 
 [7] "TimeBodyAccelerometerStd-Y"                 
 [8] "TimeBodyAccelerometerStd-Z"                 
 [9] "TimeGravityAccelerometerMean-X"             
[10] "TimeGravityAccelerometerMean-Y"             
[11] "TimeGravityAccelerometerMean-Z"             
[12] "TimeGravityAccelerometerStd-X"              
[13] "TimeGravityAccelerometerStd-Y"              
[14] "TimeGravityAccelerometerStd-Z"              
[15] "TimeBodyAccelerometerJerkMean-X"            
[16] "TimeBodyAccelerometerJerkMean-Y"            
[17] "TimeBodyAccelerometerJerkMean-Z"            
[18] "TimeBodyAccelerometerJerkStd-X"             
[19] "TimeBodyAccelerometerJerkStd-Y"             
[20] "TimeBodyAccelerometerJerkStd-Z"             
[21] "TimeBodyGyroscopeMean-X"                    
[22] "TimeBodyGyroscopeMean-Y"                    
[23] "TimeBodyGyroscopeMean-Z"                    
[24] "TimeBodyGyroscopeStd-X"                     
[25] "TimeBodyGyroscopeStd-Y"                     
[26] "TimeBodyGyroscopeStd-Z"                     
[27] "TimeBodyGyroscopeJerkMean-X"                
[28] "TimeBodyGyroscopeJerkMean-Y"                
[29] "TimeBodyGyroscopeJerkMean-Z"                
[30] "TimeBodyGyroscopeJerkStd-X"                 
[31] "TimeBodyGyroscopeJerkStd-Y"                 
[32] "TimeBodyGyroscopeJerkStd-Z"                 
[33] "TimeBodyAccelerometerMagnitudeMean"         
[34] "TimeBodyAccelerometerMagnitudeStd"          
[35] "TimeGravityAccelerometerMagnitudeMean"      
[36] "TimeGravityAccelerometerMagnitudeStd"       
[37] "TimeBodyAccelerometerJerkMagnitudeMean"     
[38] "TimeBodyAccelerometerJerkMagnitudeStd"      
[39] "TimeBodyGyroscopeMagnitudeMean"             
[40] "TimeBodyGyroscopeMagnitudeStd"              
[41] "TimeBodyGyroscopeJerkMagnitudeMean"         
[42] "TimeBodyGyroscopeJerkMagnitudeStd"          
[43] "FrequencyBodyAccelerometerMean-X"           
[44] "FrequencyBodyAccelerometerMean-Y"           
[45] "FrequencyBodyAccelerometerMean-Z"           
[46] "FrequencyBodyAccelerometerStd-X"            
[47] "FrequencyBodyAccelerometerStd-Y"            
[48] "FrequencyBodyAccelerometerStd-Z"            
[49] "FrequencyBodyAccelerometerJerkMean-X"       
[50] "FrequencyBodyAccelerometerJerkMean-Y"       
[51] "FrequencyBodyAccelerometerJerkMean-Z"       
[52] "FrequencyBodyAccelerometerJerkStd-X"        
[53] "FrequencyBodyAccelerometerJerkStd-Y"        
[54] "FrequencyBodyAccelerometerJerkStd-Z"        
[55] "FrequencyBodyGyroscopeMean-X"               
[56] "FrequencyBodyGyroscopeMean-Y"               
[57] "FrequencyBodyGyroscopeMean-Z"               
[58] "FrequencyBodyGyroscopeStd-X"                
[59] "FrequencyBodyGyroscopeStd-Y"                
[60] "FrequencyBodyGyroscopeStd-Z"                
[61] "FrequencyBodyAccelerometerMagnitudeMean"    
[62] "FrequencyBodyAccelerometerMagnitudeStd"     
[63] "FrequencyBodyAccelerometerJerkMagnitudeMean"
[64] "FrequencyBodyAccelerometerJerkMagnitudeStd" 
[65] "FrequencyBodyGyroscopeMagnitudeMean"        
[66] "FrequencyBodyGyroscopeMagnitudeStd"         
[67] "FrequencyBodyGyroscopeJerkMagnitudeMean"    
[68] "FrequencyBodyGyroscopeJerkMagnitudeStd"

“features_info.txt” in the dataset gives descriptions of original variables. The variables 3 to 68 above are formed by average of each original variable described in “features_info.txt” for each “activity” and each “subject”.  Since “t”, “f”, “gyro”, “acc”, “mag” in original dataset means Time, Frequency, Gyroscope, Accelerometer and Magnitude respectively, these have been replaced appropriately in new descriptive variable names. Also “-mean()” are replaced by “Mean”, “-std()” by “Std”, “tBody” by “TimeBody” and “angle” by “Angle” for better readability. Finally, there are few variable names that include “bodybody”. These are replaced by a single “body” in new descriptive variable names. 
Note that tidy dataset that is created contains only those features that have measurements on the mean and standard deviation for each measurement. Rest all features are discarded.

