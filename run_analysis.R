library(dplyr)

# Download data
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if (! file.exists("Dataset.zip"))
    download.file(url, "Dataset.zip")

# unzip data
if (! file.exists("UCI HAR Dataset"))
    unzip("Dataset.zip")

# test set
test.data <- read.table("UCI HAR Dataset/test/X_test.txt")
names(test.data) <- read.table("UCI HAR Dataset/features.txt")[,2]

test.feature <- read.table("UCI HAR Dataset/test/y_test.txt")
names(test.feature) <- "feature"
test.subject <- read.table("UCI HAR Dataset/test/subject_test.txt")
names(test.subject) <- "subject"

dataset.test <- cbind(test.subject, test.feature,  test.data)

# train set
train.data <- read.table("UCI HAR Dataset/train/X_train.txt")
names(train.data) <- read.table("UCI HAR Dataset/features.txt")[,2]

train.feature <- read.table("UCI HAR Dataset/train/y_train.txt")
names(train.feature) <- "feature"
train.subject <- read.table("UCI HAR Dataset/train/subject_train.txt")
names(train.subject) <- "subject"

dataset.train <- cbind(train.subject, train.feature,  train.data)

dataset <- rbind(dataset.test, dataset.train)

# read train dataset and join both
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
dataset$feature <- sapply(dataset$feature, function(x) activity_labels[x,"V2"])

# all columns with mean or std values (manual selection)
dataset <- dataset[,c(1,2,3:8,43:48,83:88,123:128,163:168,203:204,216:217,229:230,242:243,255:256,268:273,347:352,426:431,505:506,518:519,531:532,544:545)]
#dataset <- dataset[,c(1:8,43:48)]

tidy <- aggregate(as.matrix(dataset[,3:ncol(dataset)]) ~ feature + subject, dataset, mean)

write.table(tidy, "tidy_data.txt", row.name=FALSE)