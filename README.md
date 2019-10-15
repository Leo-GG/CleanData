# CleanData
Coursera "Getting and Cleaning Data" Course Project

The Assignment was completed using a single script, "run_analysis.R" which performs all the required tasks.
In summary, the way the script works is:
1. Read raw data from training set
2. Compute mean and standard deviation on training data
3. Read raw data from test set
4. Compute mean and standard deviation on test data
5. Merge training and test data into a single dataframe
6. Add descriptive labels to activities and reformat labels to lower case without special characters
7. Write dataframe to a file ("**CleanData.txt**")
8. Create a second datafarme summarizing the mean values per activity and subject
9. Write summarized data to a file ("**SummaryData.txt**")

The output files are plain text, the variable are described in the code book.
