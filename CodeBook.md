# Code Book
## CleanData.txt
This file contains the mean and standard deviation values of 33 different measures extracted from the the 561-feature vector provided in the original data. In total there are 10299 observations from different subjects and activities.
The data in the file is a combination of both the train and test data from the raw data.

The variables in this file are:
subject - The subject ID, as in the raw data
activity - The label corresponding to the type of activity associated with each measurement
columns 3 to 68 contain 33 mean and 33 std values from different measures.

## SummaryData.txt
This file contains the mean value of the measurements for each subject and activity type. It is obtained by grouping and summarizing the data in the "CleanData.txt" file.

The data in this file is organized as follows:
The first column is an index indicating the subject ID 
The second column indicates one of 5 different activities
Each subsequent column contains the mean of all the measurements done for each of the 33 measures on each subject and activity type

