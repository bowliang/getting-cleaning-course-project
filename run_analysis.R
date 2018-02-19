# download data file if hasn't been downloaded
zipdir <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipfile <- "UCI HAR Dataset.zip"

if (!file.exists(zipfile)) {
  download.file(zipdir, zipfile, mode = "wb")
}

# unzip zip file
dataPath <- "UCI HAR Dataset"
if (!file.exists(dataPath)) {
  unzip(zipfile)
}

# Start to tidy data
# first read test and train data sets into R
test_X <- read.table("./UCI HAR Dataset/test/X_test.txt",header = FALSE)
test_y <- read.table("./UCI HAR Dataset/test/y_test.txt",header = FALSE)
test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt",header = FALSE)

train_X <- read.table("./UCI HAR Dataset/train/X_train.txt",header = FALSE)
train_y <- read.table("./UCI HAR Dataset/train/y_train.txt",header = FALSE)
train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt",header = FALSE)

# read the features info
features <- read.table("./UCI HAR Dataset/features.txt",header = FALSE)

# read the acticity info
activities <- read.table("./UCI HAR Dataset/activity_labels.txt",header = FALSE)
colnames(activities) <- c("activity_id", "activity_label")

library(dplyr)

# 1. merge the train and test data set into one
test_data <- cbind(test_subject,test_X,test_y)
train_data <- cbind(train_subject,train_X,train_y)
all_data <- rbind(test_data,train_data)

# remove other datasets after merging
rm(test_data,test_subject,test_X,test_y,train_data,train_subject,train_X,train_y)

# assign column names
colnames(all_data) <- c("subject",as.character(features[,2]),"activity_id")

# 2. extract only the measurements on the mean and standard deviation for each measurement
# find the pattern in the colnames with mean or std or subject or activity_id
columns_id <- grepl("mean|std|subject|activity_id", colnames(all_data))

# keep these cols
all_data <- all_data[,columns_id]

# 3. Uses descriptive activity names to name the activities in the data set
all_data$activity_id <- factor(all_data$activity_id,labels = activities[, 2])

# 4. Appropriately labels the data set with descriptive variable names
all_data_colnames <- colnames(all_data)

# replace special symbols
all_data_colnames <- gsub("[\\(\\)-]","",all_data_colnames)

# use more descriptive names
all_data_colnames <- gsub("^f", "frequency", all_data_colnames)
all_data_colnames <- gsub("^t", "time", all_data_colnames)
all_data_colnames <- gsub("Acc", "Accelerometer", all_data_colnames)
all_data_colnames <- gsub("Gyro", "Gyroscope", all_data_colnames)
all_data_colnames <- gsub("Mag", "Magnitude", all_data_colnames)

# replace typo
all_data_colnames <- gsub("BodyBody", "Body", all_data_colnames)

colnames(all_data) <- all_data_colnames

# 5. creates a second, independent tidy data set with the average of each variable for 
#    each activity and each subject

all_data_second <- all_data %>%
  group_by(subject,activity_id) %>%
  summarise_each(funs(mean))

# output the tidy data
write.table(all_data_second, "./UCI HAR Dataset/tidy_data.txt", row.names = FALSE, 
            col.names = TRUE)






