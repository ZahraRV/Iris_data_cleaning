
# Iris Dataset Cleaning with R
This repository contains an R script for cleaning and preparing the famous Iris dataset for further analysis. The script includes steps for handling missing values, converting data types, renaming columns, and creating new features.

## Overview
The Iris dataset is a classic dataset in machine learning and statistics, consisting of measurements for 150 iris flowers from three different species. The dataset includes four features: sepal length, sepal width, petal length, and petal width.

# Steps Performed
* ## Loading and Inspecting the Data

    The Iris dataset is loaded using:

             data(iris).
    The first few rows are displayed to get an initial understanding with:

             with head(iris)
    The structure of the dataset is examined with:

             str(iris).
* ## Handling Missing Values

    Checked for any missing values in the dataset using:

             colSums(is.na(iris))
     Since the Iris dataset does not contain any missing values, no further action was required.
* ## Converting Data Types

    The Species column is converted to a factor using 

            as.factor(iris$Species).
* ## Renaming Columns

    Column names are converted to lowercase using 

            names(iris) <- tolower(names(iris)).
    Periods in the column names are replaced with underscores using 

            names(iris) <- gsub("\\.", "_", names(iris)).
* ## Removing Duplicates

    Duplicate rows are removed from the dataset with 

            iris <- iris[!duplicated(iris),].
* ## Feature Engineering

     A new feature, petal_length_width_ratio, is created by calculating the ratio of petal length to petal width using the mutate function from the dplyr package.
* ## Data Summary and Final Inspection

    The summary(iris) function provides a statistical summary of the cleaned data.
    The str(iris) function is used again to check the structure of the cleaned dataset.
    The cleaned dataset is viewed using the View(iris) function for manual inspection.
* ## Saving the Cleaned Data

    The cleaned dataset is saved as a CSV file named cleaned_iris_data.csv using the write.csv function.
* ## Dependencies
    The script uses the following R package:

        dplyr for data manipulation.
            To install the package, run:
                install.packages("dplyr")
    Usage:
    To clean the Iris dataset, run the script iris_data_cleaning.R. The cleaned dataset will be saved as cleaned_iris_data.csv in your working directory.

## Summary
    This script provides a simple example of how to clean and prepare a dataset in R, including basic data cleaning steps and the creation of a new feature. The cleaned dataset is ready for further analysis or modeling.


