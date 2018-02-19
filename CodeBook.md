# Tidy data set description

The data set this CodeBook describes is the "tidy_data.txt". Please see the "README.md" to find the background of this project and dataset.

## Data
The "tidy_data.txt" data file is a text file, containing space-separated values.

The first row contains the names of the variables, which will be explained as follows.

## Variables
Overall, each row in the data set includes 79 averaged measurements, for a subject id and a given activity.

* subject
Subject id ranges from 1 to 30, and is integer type.

* activity_id
Activity id is integer type with 6 possible values:
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

* measurements 
Two types of measurements is used: acceleration ("Accelerometer") and gyroscope ("Gyroscope"). All the measurements are floating-point values, normalised within [-1,1].

The measurements are classified in two domains:
1. Time, resulting from the measurement of accelerometer and gyroscope signals
2. Frequency, by applying Fast Fourier Transform (FFT) to time-domain signals

### Time domain
The descriptions for the variable names in time domain are given:
-Average and STD of body acceleration in X, Y, Z direction (`timeDomainBodyAccelerometerMeanX`,`timeBodyAccelerometermeanY`,`timeBodyAccelerometermeanZ`,`timeBodyAccelerometerstdX`,`timeBodyAccelerometerstdY`,`timeBodyAccelerometerstdZ`)
-Average and STD of gravity acceleration in X, Y, Z direction (`timeGravityAccelerometermeanX`,`timeGravityAccelerometermeanY`,`timeGravityAccelerometermeanZ`,`timeGravityAccelerometerstdX`,`timeGravityAccelerometerstdY`,`timeGravityAccelerometerstdZ`)
-Average and STD of body acceleration jerk in X, Y, Z direction (`timeBodyAccelerometerJerkmeanX`,`timeBodyAccelerometerJerkmeanY`,`timeBodyAccelerometerJerkmeanZ`,`timeBodyAccelerometerJerkstdX`,`timeBodyAccelerometerJerkstdY`,`timeBodyAccelerometerJerkstdZ`)
-Average and STD of body angular velocity in X, Y, Z direction (`timeBodyGyroscopemeanX`,`timeBodyGyroscopemeanY`,`timeBodyGyroscopemeanZ`,`timeBodyGyroscopestdX`,`timeBodyGyroscopestdY`,`timeBodyGyroscopestdZ`)
-Average and STD of body angular velocity jerk in X, Y, Z direction (`timeBodyGyroscopeJerkmeanX`,`timeBodyGyroscopeJerkmeanY`,`timeBodyGyroscopeJerkmeanZ`,`timeBodyGyroscopeJerkstdX`,`timeBodyGyroscopeJerkstdY`,`timeBodyGyroscopeJerkstdZ`)
-Average and STD of body acceleration (`timeBodyAccelerometerMagnitudemean`,`timeBodyAccelerometerMagnitudestd`)
-Average and STD of gravity acceleration (`timeGravityAccelerometerMagnitudemean`,`timeGravityAccelerometerMagnitudestd`)
-Average and STD of body acceleration jerk (`timeBodyAccelerometerJerkMagnitudemean`,`timeBodyAccelerometerJerkMagnitudestd`)
-Average and STD of body angular velocity (`timeBodyGyroscopeMagnitudemean`,`timeBodyGyroscopeMagnitudestd`)
-Average and STD of body angular velocity jerk (`timeBodyGyroscopeJerkMagnitudemean`,`timeBodyGyroscopeJerkMagnitudestd`)

### Frequency domain
The variable names in frequency domain are given:
-`frequencyBodyAccelerometermeanX`,`frequencyBodyAccelerometermeanY`,`frequencyBodyAccelerometermeanZ`,`frequencyBodyAccelerometerstdX`,`frequencyBodyAccelerometerstdY`,`frequencyBodyAccelerometerstdZ`
- `frequencyBodyAccelerometermeanFreqX`,`frequencyBodyAccelerometermeanFreqY`,`frequencyBodyAccelerometermeanFreqZ`
- `frequencyBodyAccelerometerJerkmeanX`,`frequencyBodyAccelerometerJerkmeanY`,`frequencyBodyAccelerometerJerkmeanZ`
- `frequencyBodyAccelerometerJerkstdX`,`frequencyBodyAccelerometerJerkstdY`,`frequencyBodyAccelerometerJerkstdZ`
- `frequencyBodyAccelerometerJerkmeanFreqX`,`frequencyBodyAccelerometerJerkmeanFreqY`,`frequencyBodyAccelerometerJerkmeanFreqZ`
- `frequencyBodyGyroscopemeanX`,`frequencyBodyGyroscopemeanY`,`frequencyBodyGyroscopemeanZ`,`frequencyBodyGyroscopestdX`,`frequencyBodyGyroscopestdY`,`frequencyBodyGyroscopestdZ`
- `frequencyBodyGyroscopemeanFreqX`,`frequencyBodyGyroscopemeanFreqY`,`frequencyBodyGyroscopemeanFreqZ`
- `frequencyBodyAccelerometerMagnitudemean`,`frequencyBodyAccelerometerMagnitudestd`,`frequencyBodyAccelerometerMagnitudemeanFreq`
- `frequencyBodyAccelerometerJerkMagnitudemean`,`frequencyBodyAccelerometerJerkMagnitudestd`,`frequencyBodyAccelerometerJerkMagnitudemeanFreq`
- `frequencyBodyGyroscopeMagnitudemean`,`frequencyBodyGyroscopeMagnitudestd`,`frequencyBodyGyroscopeMagnitudemeanFreq`
- `frequencyBodyGyroscopeJerkMagnitudemean`,`frequencyBodyGyroscopeJerkMagnitudestd`,`frequencyBodyGyroscopeJerkMagnitudemeanFreq`

## Data analysis
The following data cleaning steps are applied to the original data set to get to final tidy_data.txt
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.









