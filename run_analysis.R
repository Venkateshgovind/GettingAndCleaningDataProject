

##1. Merges the training and the test sets to create one data set.

library(data.table) 

## Merge X
dtXtrain <- read.table("train/X_train.txt")
dtXtest <- read.table("test/X_test.txt")
dtX <- rbind(dtXtrain, dtXtest)
##str(dtX)

## Merge y
dtytrain <- read.table("train/y_train.txt")
dtytest <- read.table("test/y_test.txt")
dty <- rbind(dtytrain, dtytest)
##str(dty)

## Merge Subject
dtStrain <- read.table("train/subject_train.txt")
dtStest <- read.table("test/subject_test.txt")
dtS <- rbind(dtStrain, dtStest)
## Give the column a name
names(dtS) <- "subject"
str(dtS)

##2. Extracts only the measurements on the mean and standard deviation for each measurement. 
features <- read.table("features.txt")

featureNames <- features[,2]

##select mean and std dev into a logical vector
selectedFeatures <- grepl("mean\\(\\)|std\\(\\)", featureNames)

dtX <- dtX[,selectedFeatures]
##str(dtX)

##3. Uses descriptive activity names to name the activities in the data set

activities <- read.table("activity_labels.txt")

## Assign descriptive name to the column values
dty[,1] <- activities[dty[,1], 2]

## Give the column a name
names(dty) <- "activity"
str(dty)
head(dty)


##4. Appropriately labels the data set with descriptive variable names. 

names(dtX) <-  features[selectedFeatures, 2]
##replace the ()
names(dtX) <- gsub("\\(|\\)", "" , names(dtX))

##Merge all columns from X,y and Subject

dtAll <- cbind(dtS, dty, dtX)
str(dtAll)
head(dtAll)

##write to a file
write.table(dtAll, "cleanset.txt", row.names=FALSE)


##5. Creates a second, independent tidy data set with the average of each variable 
##   for each activity and each subject. 
#aggregate by subjectid and activity
byactandsubject <- aggregate(. ~ subject + activity, data=dtAll, FUN = mean)

str(byactandsubject)
head(byactandsubject)

write.table(byactandsubject, file="byactivityandsubject.txt", row.names=FALSE)


