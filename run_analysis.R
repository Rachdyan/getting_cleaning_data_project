library(dplyr)

#Download the dataset and make data directory file if isn't exist yet
  if(!file.exists("data")){dir.create("data")}
  url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url, destfile = "./data/project_dataset.zip")

#Unzip the file
  unzip("./data/project_dataset.zip", exdir = "./data")

#Read the train dataset
  train_x <- read.table("./data/UCI HAR DATASET/train/X_train.txt")
  train_y <- read.table("./data/UCI HAR DATASET/train/y_train.txt")
  subject_train <- read.table("./data/UCI HAR DATASET/train/subject_train.txt")

#Read the test dataset
  test_x <- read.table("./data/UCI HAR DATASET/test/X_test.txt")
  test_y <- read.table("./data/UCI HAR DATASET/test/y_test.txt")
  esubject_test <- read.table("./data/UCI HAR DATASET/test/subject_test.txt")

#Read features
  features <- read.table("./data/UCI HAR DATASET/features.txt")

#Read activity labels
  activity_labels <- read.table("./data/UCI HAR DATASET/activity_labels.txt")

#Assign variable name in train and test datasets
  names(train_x) <- features[,2]
  names(test_x) <- features[,2]

  names(train_y) <- "activityId"
  names(test_y) <- "activityId"

  names(subject_train) <- "subject_id"
  names(subject_test) <- "subject_id"

#Merge the dataset
  train_all <- cbind(subject_train, train_y, train_x)
  test_all <- cbind(subject_test, test_y, test_x)
  final_data <- rbind(train_all, test_all)

#Extract the mean and standard deviation index for each measurement
  col_names <- colnames(final_data)
  col_names
  mean_std_index <- which(grepl("mean\\(\\)", col_names) | grepl("std", col_names))
  
#Subset the mean and standard deviation from the merged dataset
  mean_std_data <- final_data %>% select(subject_id, activity_id, mean_std_index)

#/change activity id to descriptive activity names
  mean_std_activity <- mean_std_data %>% merge(activity_labels, by.x = "activity_id", by.y = "V1") %>%
                       rename(activity = V2) %>% select(-activity_id) %>% 
                       relocate(activity, .after = subject_id)


#Tidy the column names by removing symbol, removing typo, and rename with descriptive name
  mean_std_activity_cols <- colnames(mean_std_activity)
  mean_std_activity_cols <- gsub("[-|(|)]", "", mean_std_activity_cols)
  
  mean_std_activity_cols <- gsub("^t", "timeDomain_", mean_std_activity_cols)
  mean_std_activity_cols <- gsub("^f", "frequencyDomain_", mean_std_activity_cols)
  mean_std_activity_cols <- gsub("Acc", "Accelerometer",  mean_std_activity_cols)
  mean_std_activity_cols <- gsub("Gyro", "Gyroscope",  mean_std_activity_cols)
  mean_std_activity_cols <- gsub("Mag", "Magnitude",  mean_std_activity_cols)
  mean_std_activity_cols <- gsub("Freq", "Frequency",  mean_std_activity_cols)
  mean_std_activity_cols <- gsub("mean", "_Mean",  mean_std_activity_cols)
  mean_std_activity_cols <- gsub("std", "_StandardDeviation",  mean_std_activity_cols)
  mean_std_activity_cols <- gsub("BodyBody", "Body",  mean_std_activity_cols)

  names(mean_std_activity) <- mean_std_activity_cols

# Crate an independent tidy data set with the average of each variable for each activity and each subject
  secondSet <- mean_std_activity %>% group_by(subject_id, activity) %>%
              summarise_all(mean)

#Write the data into txt file
  write.table(secondSet, "./tidySet.txt", row.names = FALSE)

 

