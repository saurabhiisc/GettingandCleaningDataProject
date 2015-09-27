library(dplyr)
library(data.table)

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, "courseprojectdata.zip")
unzip(zipfile = "courseprojectdata.zip")
setwd("./UCI HAR Dataset")


dataTrainY <- read.table("train/y_train.txt", header = FALSE)
dataTrainX <- read.table("train/X_train.txt", header = FALSE)
dataTestX <- read.table("test/X_test.txt", header = FALSE)
dataTestY <- read.table("test/y_test.txt", header = FALSE)
dataSubjectTrain <- read.table("train/subject_train.txt", header = FALSE)
dataSubjectTest <- read.table("test/subject_test.txt", header = FALSE)

# 1. Merges the training and the test sets to create one data set.
# First column is Subject ID, next are features datset and last column is activity label
dataX <- rbind(dataTrainX, dataTestX)
dataY <- rbind(dataTrainY, dataTestY)
dataSubject <- rbind(dataSubjectTrain, dataSubjectTest)
features <- read.table("features.txt")
activity <- read.table("activity_labels.txt")
colnames(dataX) <- features$V2
colnames(dataY) <- "activity"
colnames(dataSubject) <- "subject"
data <- cbind(dataSubject, dataX, dataY)
head(data)
dim(data)


# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# grep "mean()" and "std()" from column names and add back 1st and last column as they would 
# get removed in the grep results. "mean()" and "std()" are used instead of "mean" and "std" 
# so that measurements such as "meanFreq()" measurements are not exctracted.
# Note: escape character has to be used for grepping "(" and ")"
data<- data[, c(grep("mean\\(\\)|std\\(\\)", colnames(data), ignore.case=TRUE), 1, 563)]
dim(data)


# 3. Uses descriptive activity names to name the activities in the data set.
data$activity <- activity[data$activity, 2]
data$activity <- as.factor(data$activity)
head(data$activity, 10)


# 4. Appropriately labels the data set with descriptive variable names.
# From "features_info.txt", it is clear that t" in column names means time and "f" means frequency
# Also "Acc" = Accelerator, "Gyro" =  Gyroscope, "Mag" = Magnitude
colnames(data)
colnames(data) <- gsub("^t", "Time", colnames(data))
colnames(data) <- gsub("^f", "Frequency", colnames(data))
colnames(data) <- gsub("Acc", "Accelerometer", colnames(data))
colnames(data) <- gsub("Gyro", "Gyroscope", colnames(data))
colnames(data) <- gsub("Mag", "Magnitude", colnames(data))

colnames(data)

# -mean() would better be replaced by Mean, -std() by Std,
# tBody by TimeBody and angle by Angle
colnames(data) <- gsub("-mean\\(\\)", "Mean", colnames(data))
colnames(data) <- gsub("-std\\(\\)", "Std", colnames(data))
colnames(data)

# There are column names that have "BodyBody". This should be replaces by single "Body"
colnames(data) <- gsub("BodyBody", "Body", colnames(data))
colnames(data)


# 5. From the data set in step 4, creates a second, independent tidy data set with the 
# average of each variable for each activity and each subject.
dataTidy <-  aggregate(. ~subject + activity, data, mean)
dataTidy <- dataTidy[order(dataTidy$subject,dataTidy$activity),]

# It can also be done using "%>%" operator fro dplyr package
dataTidy <-  data %>% group_by(subject, activity) %>% summarise_each(funs(mean))

setwd("..")
write.table(dataTidy1, file="dataTidy.txt", row.names=FALSE)

