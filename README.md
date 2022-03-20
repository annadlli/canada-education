This repository is organized as follows:

1. Inputs include data and literature. Specifically, data includes 3 files. 2 files are the original labels and dictionary for the 2017 Canadian GSS microdata. The gss.csv is the raw data after undergoing cleaning using 01_data_clean. Raw data is not included due to license restrictions. Literature includes all the peer-reviewed articles referenced in my report. However, websites as well as restricted permission documents are not included, such as the user guide to 2017 Canadian GSS microdata. 

2. Scripts includes 2 scripts utilized for cleaning. 01_data_clean cleans the raw data within 2017 Canadian GSS to easily interpretable variables and labels. 01-data_preparation prepares the cleaned version of the data further to suit the needs of this report. This includes selecting variables, renaming levels, and eliminating missing observations. This decreases the data set from 20602 observations of 81 variables to 6476 observations of 12 variables. The final utilized dataset is included in the outputs data folder. 

3. Outputs includes the folder data and happiness. Data includes the final used data set, after undergoing cleaning utilizing the 2 scripts. Happiness includes 3 pieces. First, is the R markdown and pdf results of the report. Second, a reference bibliography that is used for citations. Finally, a tex preamble is also included, which helps fixate the figures in the report in their various desired sections. 



Specific steps to access 2017 Canadian GSS include the following:
1. Access CHASS at http://ww.chass.utoronto.ca/, login using credentials (University of Toronto)
2. Choose SDA @ CHAss, choose language to access database of all microdata surveys available. 
3. Find 2017 Canadian GSS, click data and download specifically 3 files: CSV data file, data definitions for STATA, and codebook. All variables should be selected.
4. Save locally
