source(dplyr)
#features
features<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\features.txt",header = FALSE)
activitys_names<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\activity_labels.txt", header = FALSE)
#
features_train<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\X_train.txt",header = FALSE)
activitys_train<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\y_train.txt",header=FALSE)
subjects_train<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\subject_train.txt",header=FALSE)
bodyAccX_train<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\Inertial Signals\\body_acc_x_train.txt",header=FALSE)
bodyAccY_train<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\Inertial Signals\\body_acc_y_train.txt",header=FALSE)
bodyAccZ_train<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\Inertial Signals\\body_acc_z_train.txt",header=FALSE)
bodyGyroX_train<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\Inertial Signals\\body_gyro_x_train.txt",header=FALSE)
bodyGyroY_train<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\Inertial Signals\\body_gyro_y_train.txt",header=FALSE)
bodyGyroZ_train<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\Inertial Signals\\body_gyro_z_train.txt",header=FALSE)
totalAccX_train<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\Inertial Signals\\total_acc_x_train.txt",header=FALSE)
totalAccY_train<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\Inertial Signals\\total_acc_y_train.txt",header=FALSE)
totalAccZ_train<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\Inertial Signals\\total_acc_z_train.txt",header=FALSE)
features_test<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\X_test.txt",header = FALSE)
activitys_test<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\y_test.txt",header=FALSE)
subjects_test<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\subject_test.txt",header=FALSE)
bodyAccX_test<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\Inertial Signals\\body_acc_x_test.txt",header=FALSE)
bodyAccY_test<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\Inertial Signals\\body_acc_y_test.txt",header=FALSE)
bodyAccZ_test<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\Inertial Signals\\body_acc_z_test.txt",header=FALSE)
bodyGyroX_test<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\Inertial Signals\\body_gyro_x_test.txt",header=FALSE)
bodyGyroY_test<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\Inertial Signals\\body_gyro_y_test.txt",header=FALSE)
bodyGyroZ_test<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\Inertial Signals\\body_gyro_z_test.txt",header=FALSE)
totalAccX_test<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\Inertial Signals\\total_acc_x_test.txt",header=FALSE)
totalAccY_test<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\Inertial Signals\\total_acc_y_test.txt",header=FALSE)
totalAccZ_test<-read.table("C:\\Users\\barro\\FX\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\Inertial Signals\\total_acc_z_test.txt",header=FALSE)
#rename cols in train
names(features_train)<-features$V2
#rename cols in test
names(features_test)<-features$V2
#rename cols in activitys train
names(activitys_train)<-"activitys"
#rename cols in activitys test
names(activitys_test)<-"activitys"
#rename cols in subject train
names(subjects_train)<-"subject"
#rename colomun in subject test
names(subjects_test)<-"subject"
#
train=cbind(subjects_train,activitys_train,features_train)
test=cbind(subjects_test,activitys_test,features_test)
total<-rbind(train,test)
MeanStd<-total%>%select(matches('mean|std'))
#
totalnames<-total
rows<-nrow(totalnames)
for (i in 1:rows){
  if (totalnames[i,2]<-1){
    totalnames[i,2]<-"WALKING"
  }
  if (totalnames[i,2]<-2){
    totalnames[i,2]<-"WALKING_UPSTAIRS"
  }
  if (totalnames[i,2]<-3){
    totalnames[i,2]<-"WALKING_DOWNSTAIRS"
  }
  if (totalnames[i,2]<-4){
    totalnames[i,2]<-"SITTING"
  }
  if (totalnames[i,2]<-5){
    totalnames[i,2]<-"STANDING"
  }
  if (totalnames[i,2]<-6){
    totalnames[i,2]<-"LAYING"
  }
}
#
names(totalnames)<-gsub("tBodyAcc-","Body acceleration signal in time domain 1",names(totalnames))
names(totalnames)<-gsub("tBodyAccMag-","Body acceleration signal in time domain applied to Fast Fourier Transform 2",names(totalnames))
names(totalnames)<-gsub("tBodyAccJerk-","Body acceleration jerk signal in time domain 3",names(totalnames))
names(totalnames)<-gsub("tBodyAccJerkMag-","Body acceleration jerk signal in time domain applied to Fast Fourrier Transform 4",names(totalnames))
names(totalnames)<-gsub("tGravityAcc-","Gravity acceleration signal in time domain 5",names(totalnames))
names(totalnames)<-gsub("tGravityAccMag-","Gravity acceleration signal in time domain applied to Fast Fourier Transform 6",names(totalnames))
names(totalnames)<-gsub("tBodyGyro-","Body acceleration signal in time domain 7",names(totalnames))
names(totalnames)<-gsub("tBodyGyroMag-","Body acceleration signal in time domain applied to Fast Fourrier Transform 8",names(totalnames))
names(totalnames)<-gsub("tBodyGyroJerk-","Body acceleration jerk signal in time domain 9",names(totalnames))
names(totalnames)<-gsub("tBodyGyroJerkMag-","Body acceleration jerk signal in time domain applied to Fast Fourrier Transform 10",names(totalnames))
names(totalnames)<-gsub("fBodyAcc-","Body acceleration signal in frequence domain 11",names(totalnames))
names(totalnames)<-gsub("fBodyAccMag-","Body acceleration signal in frequence domain applied to Fast Fourier Transform 12",names(totalnames))
names(totalnames)<-gsub("fBodyAccJerk-","Body acceleration jerk signal in frequence domain 13",names(totalnames))
names(totalnames)<-gsub("fBodyGyro-","Body acceleration signal in frequence domain 14",names(totalnames))
names(totalnames)<-gsub("fBodyAccJerkMag-","Body acceleration jerk signal in frequence domain applied to Fast Fourrier Transform 15",names(totalnames))
names(totalnames)<-gsub("fBodyGyroMag-","Body acceleration signal in frequence domain applied to Fast Fourier Transform 16",names(totalnames))
names(totalnames)<-gsub("mean()", "MEAN", names(totalnames))
names(totalnames)<-gsub("std()", "SD", names(totalnames))
#
tidydata<-totalnames%>%group_by(subject,activitys)%>%summarise_all(mean)
write.table(totalnames, "tidydata.txt", row.name=FALSE)


