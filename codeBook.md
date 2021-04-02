# Code Book
This code book describe the data in tidySet.txt

## Source 
The source data are from Human Activity Recognition Using Smartphones Data Set. The full description of the dataset is available here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. The dataset can be downloaded here:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

## Variables
The data contains 180 row and 68 column. Each row contains average and standard deviation values that were group by activity and subject ID. 

The activity includes:
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

The subject ID range between 1-30

## 68 Column in the data
 [1] "subject_id"                                                       "activity"                                                        
 [3] "timeDomain_BodyAccelerometer_MeanX"                               "timeDomain_BodyAccelerometer_MeanY"                              
 [5] "timeDomain_BodyAccelerometer_MeanZ"                               "timeDomain_BodyAccelerometer_StandardDeviationX"                 
 [7] "timeDomain_BodyAccelerometer_StandardDeviationY"                  "timeDomain_BodyAccelerometer_StandardDeviationZ"                 
 [9] "timeDomain_GravityAccelerometer_MeanX"                            "timeDomain_GravityAccelerometer_MeanY"                           
[11] "timeDomain_GravityAccelerometer_MeanZ"                            "timeDomain_GravityAccelerometer_StandardDeviationX"              
[13] "timeDomain_GravityAccelerometer_StandardDeviationY"               "timeDomain_GravityAccelerometer_StandardDeviationZ"              
[15] "timeDomain_BodyAccelerometerJerk_MeanX"                           "timeDomain_BodyAccelerometerJerk_MeanY"                          
[17] "timeDomain_BodyAccelerometerJerk_MeanZ"                           "timeDomain_BodyAccelerometerJerk_StandardDeviationX"             
[19] "timeDomain_BodyAccelerometerJerk_StandardDeviationY"              "timeDomain_BodyAccelerometerJerk_StandardDeviationZ"             
[21] "timeDomain_BodyGyroscope_MeanX"                                   "timeDomain_BodyGyroscope_MeanY"                                  
[23] "timeDomain_BodyGyroscope_MeanZ"                                   "timeDomain_BodyGyroscope_StandardDeviationX"                     
[25] "timeDomain_BodyGyroscope_StandardDeviationY"                      "timeDomain_BodyGyroscope_StandardDeviationZ"                     
[27] "timeDomain_BodyGyroscopeJerk_MeanX"                               "timeDomain_BodyGyroscopeJerk_MeanY"                              
[29] "timeDomain_BodyGyroscopeJerk_MeanZ"                               "timeDomain_BodyGyroscopeJerk_StandardDeviationX"                 
[31] "timeDomain_BodyGyroscopeJerk_StandardDeviationY"                  "timeDomain_BodyGyroscopeJerk_StandardDeviationZ"                 
[33] "timeDomain_BodyAccelerometerMagnitude_Mean"                       "timeDomain_BodyAccelerometerMagnitude_StandardDeviation"         
[35] "timeDomain_GravityAccelerometerMagnitude_Mean"                    "timeDomain_GravityAccelerometerMagnitude_StandardDeviation"      
[37] "timeDomain_BodyAccelerometerJerkMagnitude_Mean"                   "timeDomain_BodyAccelerometerJerkMagnitude_StandardDeviation"     
[39] "timeDomain_BodyGyroscopeMagnitude_Mean"                           "timeDomain_BodyGyroscopeMagnitude_StandardDeviation"             
[41] "timeDomain_BodyGyroscopeJerkMagnitude_Mean"                       "timeDomain_BodyGyroscopeJerkMagnitude_StandardDeviation"         
[43] "frequencyDomain_BodyAccelerometer_MeanX"                          "frequencyDomain_BodyAccelerometer_MeanY"                         
[45] "frequencyDomain_BodyAccelerometer_MeanZ"                          "frequencyDomain_BodyAccelerometer_StandardDeviationX"            
[47] "frequencyDomain_BodyAccelerometer_StandardDeviationY"             "frequencyDomain_BodyAccelerometer_StandardDeviationZ"            
[49] "frequencyDomain_BodyAccelerometerJerk_MeanX"                      "frequencyDomain_BodyAccelerometerJerk_MeanY"                     
[51] "frequencyDomain_BodyAccelerometerJerk_MeanZ"                      "frequencyDomain_BodyAccelerometerJerk_StandardDeviationX"        
[53] "frequencyDomain_BodyAccelerometerJerk_StandardDeviationY"         "frequencyDomain_BodyAccelerometerJerk_StandardDeviationZ"        
[55] "frequencyDomain_BodyGyroscope_MeanX"                              "frequencyDomain_BodyGyroscope_MeanY"                             
[57] "frequencyDomain_BodyGyroscope_MeanZ"                              "frequencyDomain_BodyGyroscope_StandardDeviationX"                
[59] "frequencyDomain_BodyGyroscope_StandardDeviationY"                 "frequencyDomain_BodyGyroscope_StandardDeviationZ"                
[61] "frequencyDomain_BodyAccelerometerMagnitude_Mean"                  "frequencyDomain_BodyAccelerometerMagnitude_StandardDeviation"    
[63] "frequencyDomain_BodyAccelerometerJerkMagnitude_Mean"              "frequencyDomain_BodyAccelerometerJerkMagnitude_StandardDeviation"
[65] "frequencyDomain_BodyGyroscopeMagnitude_Mean"                      "frequencyDomain_BodyGyroscopeMagnitude_StandardDeviation"        
[67] "frequencyDomain_BodyGyroscopeJerkMagnitude_Mean"                  "frequencyDomain_BodyGyroscopeJerkMagnitude_StandardDeviation"

