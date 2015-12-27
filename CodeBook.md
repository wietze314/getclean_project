### Code book
Info of the data used in this project can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Data collection summary
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


For info on data processing, read readme.md

### columns in dataframes 'combclean' and 'avgclean'
filtered columns in cleaned datasets used in this project and their description, if applicable.

#### The following columns where not in the original data files:
* activity : activity (factor)
* subject : number identifying a subject
* set : marks from which set the data is loaded (training or test set). This column is not in dataframe avgclean, since data is summarized over both data source sets

#### the following column names are constructed from the features.txt file.
These column names are stripped from special characters, but other than that were unchanged, with the following naming conventions

##### Abbrivations
* Acc = Acceleration in g's (9.80665 m/seg2). Acceleration signal from the smartphone accelerometer.
* Gyro = angular velocity vector measured by the gyroscope (radians/second)
* X = X axis (for gyroscope measurements)
* Y = Y axis (for gyroscope measurements)
* Z = Z axis (for gyroscope measurements)
* t (prefix) = time domain
* f (prefix) = frequency domain

##### Columns
* tBodyAcc_mean_X 
* tBodyAcc_mean_Y 
* tBodyAcc_mean_Z 
* tBodyAcc_std_X 
* tBodyAcc_std_Y 
* tBodyAcc_std_Z 
* tGravityAcc_mean_X 
* tGravityAcc_mean_Y 
* tGravityAcc_mean_Z 
* tGravityAcc_std_X 
* tGravityAcc_std_Y 
* tGravityAcc_std_Z 
* tBodyAccJerk_mean_X 
* tBodyAccJerk_mean_Y 
* tBodyAccJerk_mean_Z 
* tBodyAccJerk_std_X 
* tBodyAccJerk_std_Y 
* tBodyAccJerk_std_Z 
* tBodyGyro_mean_X 
* tBodyGyro_mean_Y 
* tBodyGyro_mean_Z 
* tBodyGyro_std_X 
* tBodyGyro_std_Y 
* tBodyGyro_std_Z 
* tBodyGyroJerk_mean_X 
* tBodyGyroJerk_mean_Y 
* tBodyGyroJerk_mean_Z 
* tBodyGyroJerk_std_X 
* tBodyGyroJerk_std_Y 
* tBodyGyroJerk_std_Z 
* tBodyAccMag_mean 
* tBodyAccMag_std 
* tGravityAccMag_mean 
* tGravityAccMag_std 
* tBodyAccJerkMag_mean 
* tBodyAccJerkMag_std 
* tBodyGyroMag_mean 
* tBodyGyroMag_std 
* tBodyGyroJerkMag_mean 
* tBodyGyroJerkMag_std 
* fBodyAcc_mean_X 
* fBodyAcc_mean_Y 
* fBodyAcc_mean_Z 
* fBodyAcc_std_X 
* fBodyAcc_std_Y 
* fBodyAcc_std_Z 
* fBodyAccJerk_mean_X 
* fBodyAccJerk_mean_Y 
* fBodyAccJerk_mean_Z 
* fBodyAccJerk_std_X 
* fBodyAccJerk_std_Y 
* fBodyAccJerk_std_Z 
* fBodyGyro_mean_X 
* fBodyGyro_mean_Y 
* fBodyGyro_mean_Z 
* fBodyGyro_std_X 
* fBodyGyro_std_Y 
* fBodyGyro_std_Z 
* fBodyAccMag_mean 
* fBodyAccMag_std 
* fBodyBodyAccJerkMag_mean 
* fBodyBodyAccJerkMag_std 
* fBodyBodyGyroMag_mean 
* fBodyBodyGyroMag_std 
* fBodyBodyGyroJerkMag_mean 
* fBodyBodyGyroJerkMag_std
