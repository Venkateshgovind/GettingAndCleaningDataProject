#Getting and Cleaning Data Course Project

##This project creates cleaned up data and aggregate file for the given data set. Here are the steps.

1. Download the data files from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

2. Unzip the data files in the same path as this R file. So the structure of your folder should be something like this:
	
	--Project
		|--test
		|--train
		|--run_analysis.R
		|--features.txt
		|--....

3. Set working directory topoint to the location of the working directory of this repository.

4. Then run "run_analysis.R" which will output the cleanset.txt and byactivityandsubject.txt files. 

5. cleanset.txt contains the cleaned up version of all data provided and byactivityandsubject.txt will contain the aggregated data by activity and subject.