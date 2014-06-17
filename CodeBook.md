#Code Book

#Overview
The data file contains measurements from the experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

#Steps
1. Merge the training and test set for measurements, subject and activities.
2. Provide meaningful names for the columns
3. Extract out just the Mean and St.Deviation measurments alone.
4. Create a merged data file called "cleanset.txt".
5. Calculate aggregates by activity and subject on the clean data file and save it into a second data file called "byactivityandsubject.txt".

#Fields in byactivityandsubject.txt
1. subject: Identifies the subject
2. activiy: Represents one of these values (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
3....N : Average of different measurements grouped by subject and activity


