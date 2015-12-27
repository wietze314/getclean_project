# Getting and cleaning data
# Course project
## made by Wietze

Getting and cleaning data coursera course project submission Git.

The script loads all required files from disk. Remember to set the correct working directory.
Downloaded data files should reside in the sub folder 'UCI HAR Dataset'
The link for the files is in the coursera project description.

After loading all data subject and activity info is attached to the other data
The column names are renamed based on the features.txt file
Activity is reformatted into a factor.

Columns are filtered so only mean() and std() columns are left in the dataset
Special characters are removed from the column names

The data is splitted and column means are calculated.
A dataframe is constructed with the means and stored as avgclean_tidy.txt for submission to coursera.

## required packages
The script does not requier additional packages
