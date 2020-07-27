By Jorge Barros Rubiralta Abascal
For Week 4 Assignment Getting and Cleaning Data.

Files:
readme.txt
codebook.txt 
run_analysis.R

The Original Files are the following:
activity_labels.txt
features.txt
train directory:
subject_train.txt
X_train.txt
y_train.txt
Inertial Signals:
boty_acc_x_train.txt
boty_acc_y_train.txt
boty_acc_z_train.txt
boty_gyro_x_trian.txt
boty_gyro_y_trian.txt
boty_gyro_z_trian.txt
total_acc_x_train.txt
total_acc_y_train.txt
total_acc_z_train.txt
test directory:
subject_test.txt
X_test.txt
y_test.txt
Inertial Signals:
boty_acc_x_test.txt
boty_acc_y_test.txt
boty_acc_z_test.txt
boty_gyro_x_test.txt
boty_gyro_y_test.txt
boty_gyro_z_test.txt
total_acc_x_test.txt
total_acc_y_test.txt
total_acc_z_test.txt


run_analysis.R:
This file loads the activity_names and features into R. Then asigns the activity_name to the designated number and the featrue name to the designated variable.
Then it merges both train and test datasets. Looks for the mean and stddev within the features. Finally it makes a tidydata set that's easy to reed.

Original Data Set Information:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Check the README.txt file for further details about this dataset.

A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: [Web Link]

An updated version of this dataset can be found at [Web Link]. It includes labels of postural transitions between activities and also the full raw inertial signals instead of the ones pre-processed into windows.
Attribute Information:
For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.

