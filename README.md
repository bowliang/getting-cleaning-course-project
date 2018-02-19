# Getting and Cleaning Data COURSERA course: final project
This repo was created to finish the final project of COURSERA course (Getting and clearning data).

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here is the data sample we use for this course:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This repository contains the following files:
- `README.md`, this file, which provides the basic information of the project and data
- `tidy_data.txt`, which is the final output after cleanning the dataset.
- `CodeBook.md`, which describes the dataset, indicates all the variables and summaries calculated, along with units, and any other relevant information
- `run_analysis.R`, which is used to create the data set.

The code is written based on the project requriement as:
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names.
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

This script requires the `dplyr` package (version 0.4.3 was used).

