##################################
# Assignment 1: Data Science Course
# Kyle Ott & Cornelius Schneider
# 26 September 2014
##################################


setwd ('Dropbox/Fall_2014/Collab_Data/Assignment1_Ott_Schneider')
#change the directory above to your local director to run this file through


#set working directory with setwd('') and then you later only give relative working paths

#linking to other file, source('~filepath'), run it and the values in the environemnt has that



# This file runs two different datasets

# The first datset looks at the heights and weights of US women



# The second dataset looks at the average annual precipitaion of 70
# cities in the US as calculated in 1975.

data(precip) #this dataset comes preloaded into R
names(precip) #lists the 70 US cities
?precip #to learn more information about this dataset

summary(precip) 
#but no one in Europe knows inches, let's convert to centimeters!

precip_cm <- precip*2.54 #precip_cm will be the focus from now on

summary(precip_cm)
#the output of the summary
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#7.00   29.38   36.60   34.89   42.77   67.00 

#Plotting a historgram
hist(precip_cm,
     main='Average Rainfall of 70 US Cities in 1975',
     xlab='Precipation in Centimeters')

#analysis of the distrubtion

#Looking at variation in the data
var(precip_cm)
sd(precip_cm)
#analysis

#Plotting a boxplot
boxplot(precip_cm)

#analysis

boxplot.stats(precip_cm, )
#explain this command and why it was useful







## R Core Team (2014). R: A language and environment for
## statistical computing. R Foundation for Statistical Computing,
## Vienna, Austria. URL http://www.R-project.org/.


