# Course project for "Getting and Cleaning Data" class 2015-04
# 
# Here are the data for the project:
#     
#     https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# 
# You should create one R script called run_analysis.R that does the following. 
# 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each 
# measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
#
# 2015-04-19
#

#*******************************************************************************
# 1. Merges the training and the test sets to create one data set.
# To merge the data sets we simply need to combine the two sets of files, by 
# first loading them and then writing them to the same file.


# Load the training data set
subject_train = read.table(file="UCI HAR Dataset/train/subject_train.txt")
X_train = read.table(file="UCI HAR Dataset/train/X_train.txt")
y_train = read.table(file="UCI HAR Dataset/train/y_train.txt")

is_body_acc_x_train = read.table(file="UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt")
is_body_acc_y_train = read.table(file="UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt")
is_body_acc_z_train = read.table(file="UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt")

is_body_gyro_x_train = read.table(file="UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt")
is_body_gyro_y_train = read.table(file="UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt")
is_body_gyro_z_train = read.table(file="UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt")

is_total_acc_x_train = read.table(file="UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt")
is_total_acc_y_train = read.table(file="UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt")
is_total_acc_z_train = read.table(file="UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt")

# Load the test data sey
subject_test = read.table(file="UCI HAR Dataset/test/subject_test.txt")
X_test = read.table(file="UCI HAR Dataset/test/X_test.txt")
y_test = read.table(file="UCI HAR Dataset/test/y_test.txt")

is_body_acc_x_test = read.table(file="UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt")
is_body_acc_y_test = read.table(file="UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt")
is_body_acc_z_test = read.table(file="UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt")

is_body_gyro_x_test = read.table(file="UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt")
is_body_gyro_y_test = read.table(file="UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt")
is_body_gyro_z_test = read.table(file="UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt")

is_total_acc_x_test = read.table(file="UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt")
is_total_acc_y_test = read.table(file="UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt")
is_total_acc_z_test = read.table(file="UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt")

# Merge the data sets
# Create a new folder for data set
dir.create("UCI HAR Dataset Merged")
dir.create("UCI HAR Dataset Merged/data/")
dir.create("UCI HAR Dataset Merged/data/Inertial Signals/")

# subject, X and y
write.table(subject_train,
            file="UCI HAR Dataset Merged/data/subject.txt",
            append=FALSE, row.names=FALSE, col.names=FALSE)
write.table(subject_test,
            file="UCI HAR Dataset Merged/data/subject.txt",
            append=TRUE, row.names=FALSE, col.names=FALSE)

write.table(X_train,
            file="UCI HAR Dataset Merged/data/X.txt",
            append=FALSE, row.names=FALSE, col.names=FALSE)
write.table(X_test,
            file="UCI HAR Dataset Merged/data/X.txt",
            append=TRUE, row.names=FALSE, col.names=FALSE)

write.table(y_train,
            file="UCI HAR Dataset Merged/data/y.txt",
            append=FALSE, row.names=FALSE, col.names=FALSE)
write.table(y_test,
            file="UCI HAR Dataset Merged/data/y.txt",
            append=TRUE, row.names=FALSE, col.names=FALSE)

# Body acceleration
write.table(is_body_acc_x_train,
            file="UCI HAR Dataset Merged/data/Inertial Signals/body_acc_x.txt",
            append=FALSE, row.names=FALSE, col.names=FALSE)
write.table(is_body_acc_x_test,
            file="UCI HAR Dataset Merged/data/Inertial Signals/body_acc_x.txt",
            append=TRUE, row.names=FALSE, col.names=FALSE)

write.table(is_body_acc_y_train,
            file="UCI HAR Dataset Merged/data/Inertial Signals/body_acc_y.txt",
            append=FALSE, row.names=FALSE, col.names=FALSE)
write.table(is_body_acc_y_test,
            file="UCI HAR Dataset Merged/data/Inertial Signals/body_acc_y.txt",
            append=TRUE, row.names=FALSE, col.names=FALSE)

write.table(is_body_acc_z_train,
            file="UCI HAR Dataset Merged/data/Inertial Signals/body_acc_z.txt",
            append=FALSE, row.names=FALSE, col.names=FALSE)
write.table(is_body_acc_z_test,
            file="UCI HAR Dataset Merged/data/Inertial Signals/body_acc_z.txt",
            append=TRUE, row.names=FALSE, col.names=FALSE)

# Body gyro
write.table(is_body_gyro_x_train,
            file="UCI HAR Dataset Merged/data/Inertial Signals/body_gyro_x.txt",
            append=FALSE, row.names=FALSE, col.names=FALSE)
write.table(is_body_gyro_x_test,
            file="UCI HAR Dataset Merged/data/Inertial Signals/body_gyro_x.txt",
            append=TRUE, row.names=FALSE, col.names=FALSE)

write.table(is_body_gyro_y_train,
            file="UCI HAR Dataset Merged/data/Inertial Signals/body_gyro_y.txt",
            append=FALSE, row.names=FALSE, col.names=FALSE)
write.table(is_body_gyro_y_test,
            file="UCI HAR Dataset Merged/data/Inertial Signals/body_gyro_y.txt",
            append=TRUE, row.names=FALSE, col.names=FALSE)

write.table(is_body_gyro_z_train,
            file="UCI HAR Dataset Merged/data/Inertial Signals/body_gyro_z.txt",
            append=FALSE, row.names=FALSE, col.names=FALSE)
write.table(is_body_gyro_z_test,
            file="UCI HAR Dataset Merged/data/Inertial Signals/body_gyro_z.txt",
            append=TRUE, row.names=FALSE, col.names=FALSE)

# Total acceleration
write.table(is_total_acc_x_train,
            file="UCI HAR Dataset Merged/data/Inertial Signals/total_acc_x.txt",
            append=FALSE, row.names=FALSE, col.names=FALSE)
write.table(is_total_acc_x_test,
            file="UCI HAR Dataset Merged/data/Inertial Signals/total_acc_x.txt",
            append=TRUE, row.names=FALSE, col.names=FALSE)

write.table(is_total_acc_y_train,
            file="UCI HAR Dataset Merged/data/Inertial Signals/total_acc_y.txt",
            append=FALSE, row.names=FALSE, col.names=FALSE)
write.table(is_total_acc_y_test,
            file="UCI HAR Dataset Merged/data/Inertial Signals/total_acc_y.txt",
            append=TRUE, row.names=FALSE, col.names=FALSE)

write.table(is_total_acc_z_train,
            file="UCI HAR Dataset Merged/data/Inertial Signals/total_acc_z.txt",
            append=FALSE, row.names=FALSE, col.names=FALSE)
write.table(is_total_acc_z_test,
            file="UCI HAR Dataset Merged/data/Inertial Signals/total_acc_z.txt",
            append=TRUE, row.names=FALSE, col.names=FALSE)


#*******************************************************************************
# 2. Extracts only the measurements on the mean and standard deviation for each 
# measurement.
# Here we select only the features representing mean() and std()

# We load the list of feature names first.
feature_info = read.table("UCI HAR Dataset/features.txt")

# We match the names that contain mean() and std() in their names
# make a single vector with the indices for the matching columns
index_mean = grep("mean()", feature_info$V2, fixed=TRUE)
index_std = grep("std()", feature_info$V2, fixed=TRUE)
index_subset = c(index_mean, index_std) 

# Load the complete data tables
subject = read.table(file="UCI HAR Dataset Merged/data/subject.txt")
X = read.table(file="UCI HAR Dataset Merged/data/X.txt")
y = read.table(file="UCI HAR Dataset Merged/data/y.txt")

# Make a data set with only selected data
X_subset = X[, index_subset]


#*******************************************************************************
# 3. Uses descriptive activity names to name the activities in the data set

# The activity codes are given in the y vector, the translation to names is 
# given in the activity_label.txt file. We use that information to translate the
# names
activity_labels = read.table(file="UCI HAR Dataset/activity_labels.txt")
y_labels = activity_labels$V2[y$V1]


#*******************************************************************************
# 4. Appropriately labels the data set with descriptive variable names. 
column_names = feature_info$V2[index_subset]
colnames(X_subset) <- column_names

# Add columns to data set X_subset with subject number and activity label
X_subset$subject <- subject$V1
X_subset$activity_label <- y_labels

# At this point the new summarized data set is contained in X_subset and has 
# descritive column names that should make it easy to use


#*******************************************************************************
# 5. From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.

# Create an empty matrix to save the data
M <- matrix(, ncol=dim(X_subset)[2], nrow=30*6)

# Go through each subject and activity and take averages
# Count the number of rows, used to fill the matrix
i = 1
for (sub in 1:30){
    for (act in activity_labels$V2){
        
        # Take the average of all the columns
        means = colMeans(X_subset[(X_subset$subject == sub & X_subset$activity_label == act), 1:66])
        
        # Combine with subject name and activity, save as data matrix row
        M[i,] <- c(sub, act, as.vector(means))
        i = i + 1
    }
}

# Add column names
colnames(M) <- c("subject", "activity_label", as.vector(column_names))

# Save to a file
write.table(M, file="data_summary.txt",
            append=FALSE, row.names=FALSE, quote=FALSE)

