# CleanData
Coursera "Getting and Cleaning Data" Course Project

The Assignment was completed using a single script, "run_analysis.R" which performs all the required tasks.
In summary, the way the script works is:
1. Subset the features of interest from the raw data (means and standard deviations)
2. Read raw data from training set
3. Read raw data from test set
4. Merge training and test data into a single dataframe
5. Add and reformat descriptive labels to activities  
6. Write dataframe to a file ("**CleanData.txt**")
7. Create a second datafarme summarizing the mean values per activity and subject
8. Write summarized data to a file ("**SummaryData.txt**")

The output files are plain text, the variable are described in the code book.
