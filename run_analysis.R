
## Read the TRAIN data into a dataframe
df_train<-data.frame(subject=read.table("./UCI HAR Dataset/train/subject_train.txt")[,1])
df_train$activity<-read.table("./UCI HAR Dataset/train/y_train.txt")[,1]
# Add mean and standard deviation of the measures to the train dataframe
measures_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
df_train$mean <- rowMeans(measures_train, na.rm=TRUE)
df_train$std <- apply(measures_train[,],1,sd)

## Read the TEST data into a dataframe
df_test<-data.frame(subject=read.table("./UCI HAR Dataset/test/subject_test.txt")[,1])
df_test$activity<-read.table("./UCI HAR Dataset/test/y_test.txt")[,1]
# Add mean and standard deviation of the measures to the test dataframe
measures_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
df_test$mean <- rowMeans(measures_test, na.rm=TRUE)
df_test$std <- apply(measures_test[,],1,sd)

## Join both dataframes
df_full<-rbind(df_train,df_test)

## Add descriptive labels to the activities
act_labels<-read.table("./UCI HAR Dataset/activity_labels.txt")
df_full$activity<-factor(df_full$activity, labels=tolower(act_labels$V2))
df_full$activity<-gsub("_"," ",df_full$activity)

# Write the dataframe to a file
write.table(df_full,file="CleanData.txt")


## Make another dataframe with the mean for each subject and activity
df_tidy<-as.data.frame(tapply(df_full$mean, list(df_full$subject, df_full$activity),mean) )
subject<-rownames(df_tidy)
df_tidy<-cbind(subject,df_tidy)

# Write the subject/activity summary to a file
write.table(df_tidy,file="SummaryData.txt")
