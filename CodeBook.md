# Code Book
## CleanData.txt
This file contains the mean and standard deviation values of the 561-feature vector provided in the original data for each measurement.
The data in the file is a combination of both the train and test data from the raw data.

The variables in this file are:
subject - The subject ID, as in the raw data
activity - The label corresponding to the type of activity associated with each measurement
mean - The mean value of the 561 values from each measurement
std - The standard deviation of the 561 values from each measurement

## SummaryData.txt
This file contains the mean value of the measurements for each subject and activity type. It is obtained by computing the mean on the 
values on the "CleanData.txt" file.

The data in this file is organized as follows:
The first column is an index indicating the subject ID 
Each subsequent column is an activity type, named after the corresponding label present in the raw data

