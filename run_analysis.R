## 
## Data Cleaning of Samsung cell phone activity data, for Getting and Cleaning Data course project.
## 

run_analysis <- function()
{
    # Define files to be read in for analysis, as defined in the dataset's
    # README.txt file. Data is separated into training and test samples.
    train_inp_file <- "../UCI\ HAR Dataset/train/X_train.txt"
    train_act_file <- "../UCI HAR Dataset/train/y_train.txt"
    train_sub_file <- "../UCI HAR Dataset/train/subject_train.txt"
    
    test_inp_file <- "../UCI HAR Dataset/test/X_test.txt"
    test_act_file <- "../UCI HAR Dataset/test/y_test.txt"
    test_sub_file <- "../UCI HAR Dataset/test/subject_test.txt"
    
    # Read each file into a separate data frame, named by data content
    train_inp <- read.table(train_inp_file)
    train_act <- read.table(train_act_file)
    train_sub <- read.table(train_sub_file)
    test_inp <- read.table(test_inp_file)
    test_act <- read.table(test_act_file)
    test_sub <- read.table(test_sub_file)

    # Read the names of each parameter for the input data files from
    # the features.txt file
    col_file <- "../UCI HAR Dataset/features.txt"    
    colnames <- read.table(col_file, stringsAsFactors=FALSE)
    
    # Extract all columns with mean() or std() in the name. Ignore other
    # occurrences of mean and std as not of interest for this project
    mean_std_cols <- grep("mean\\(\\)|std\\(\\)", colnames[,2])
    
    # Subset the input data to have only the columns representing mean 
    # or standard deviation
    train_inp_meanstd <- train_inp[mean_std_cols]
    test_inp_meanstd <- test_inp[mean_std_cols]
    
    # Merge in column of activity value for each observation, 
    # then merge in column of subject data for each 
    # observation, for each data set    
    train_act_inp <- cbind(train_act, train_inp_meanstd)
    train_all <- cbind(train_sub, train_act_inp)    
    test_act_inp <- cbind(test_act, test_inp_meanstd)
    test_all <- cbind(test_sub, test_act_inp)
    
    # Combine the processed data sets into a single large one
    data_all <- rbind(train_all, test_all)
    
    # Simplify the column names for the observations by removing parentheses, 
    # then name all columns in the combined dataset
    colnames_meanstd <- colnames[mean_std_cols, 2]
    colnames_meanstd <- gsub("\\(\\)", "", colnames_meanstd)
    colnames(data_all) <- c("Subject", "Activity", colnames_meanstd)
    
    # Replace the value of the activity by its name, based on 
    # information in activity_labels.txt. Use Lying instead of 
    # Laying because laying is grammatically incorrect!
    data_all$Activity[data_all$Activity == 1] <- "Walking"
    data_all$Activity[data_all$Activity == 2] <- "Walking Upstairs"
    data_all$Activity[data_all$Activity == 3] <- "Walking Downstairs"
    data_all$Activity[data_all$Activity == 4] <- "Sitting"
    data_all$Activity[data_all$Activity == 5] <- "Standing"
    data_all$Activity[data_all$Activity == 6] <- "Lying Down"
        
    # Write out first set of tidy data as a text file
    write.table(data_all, file = "../TidyDataSet1.txt", row.name = FALSE)
    
    # Group the data by subject and then by activity, then take the mean of each
    # column of data for that group
    data_mean <- aggregate(data_all, by=list(data_all$Subject, data_all$Activity), FUN=mean)
    
    # Necessary to remove columns used in group by, which were duplicated by aggregate
    data_mean$Subject <- NULL
    data_mean$Activity <- NULL
    
    # Overwrite aggregate Group names with meaninful names, and change column names 
    # to clarify remaining columns are means of original data
    colnames_means <- paste("Mean of", colnames_meanstd, sep=" ")
    colnames(data_mean) <- c("Subject", "Activity", colnames_means)
    
    write.table(data_mean, file = "../TidyDataSet2.txt", row.name = FALSE)
    
    data_mean
}


