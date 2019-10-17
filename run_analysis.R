## Subset the relevant features from the 566-long vector
xCols <- read.table("./UCI HAR Dataset/features.txt")[,2]
validCols<- grep("-(mean|std)\\(\\)", xCols)
# Make names clearer
feature_names<-gsub("[-()]+"," ",xCols[validCols])


## Read the TRAIN data into a dataframe
df_train<-data.frame(subject=read.table("./UCI HAR Dataset/train/subject_train.txt")[,1])
df_train$activity<-read.table("./UCI HAR Dataset/train/y_train.txt")[,1]
# Add mean and standard deviation of the measures to the train dataframe
measures_train<-read.table("./UCI HAR Dataset/train/X_train.txt")[,validCols]
names(measures_train)<-feature_names
df_train<-cbind(df_train,measures_train)


## Read the TEST data into a dataframe
df_test<-data.frame(subject=read.table("./UCI HAR Dataset/test/subject_test.txt")[,1])
df_test$activity<-read.table("./UCI HAR Dataset/test/y_test.txt")[,1]
# Add mean and standard deviation of the measures to the test dataframe
measures_test<-read.table("./UCI HAR Dataset/test/X_test.txt")[,validCols]
names(measures_test)<-feature_names
df_test<-cbind(df_test,measures_test)


## Join both dataframes
df_full<-rbind(df_train,df_test)


## Write the dataframe to a file
write.table(df_full,file="CleanData.txt",row.name=FALSE)


## Add descriptive labels to the activities
act_labels<-read.table("./UCI HAR Dataset/activity_labels.txt")
df_full$activity<-factor(df_full$activity, labels=tolower(act_labels$V2))
df_full$activity<-gsub("_"," ",df_full$activity)


## Make another dataframe with the mean for each subject and activity
library("dplyr")
df_tidy<-df_full
df_tidy<-group_by(df_tidy,subject, activity)
df_tidy<-summarise_each(df_tidy,funs(mean))

# Write the subject/activity summary to a file
write.table(df_tidy,file="SummaryData.txt",row.name=FALSE)
