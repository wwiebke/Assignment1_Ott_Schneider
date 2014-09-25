##################################
# Assignment 1: Data Science Course
# Kyle Ott & Cornelius Schneider
# 26 September 2014
##################################


setwd ('/Users/Kyle/Dropbox/Fall_2014/Collab_Data/Assignment1_Ott_Schneider')
#change the directory above to your local director to run this file through


# This file runs two different datasets

# The first datset looks at the heights and weights of US women

#Here is our dynamic link to that R script

source('women.R')


###################################################################
# The second dataset looks at the average annual precipitaion of 70
# cities in the US as calculated in 1975.

data(precip) #this dataset comes preloaded into R
names(precip) #lists the 70 US cities
?precip #to learn more information about this dataset

summary(precip) 
#but no one outside the US works with inches, let's convert to centimeters!

precip_cm <- precip*2.54 #precip_cm will be the focus from now on

summary(precip_cm) #the output of the summary

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

# Plotting a boxplot
boxplot(precip_cm,
        main='Boxplot of Annual Average Rainfall by US City',
        ylab='Average in Centimeters',
        col = "lightgray"
        )

# In the boxplot, it's clear that there is bunching around the median (92cm)
# In fact, most cities have an average annuall rainfal between 74 and 109cm
# There are a few outliers present that you can see,
# on the outskirts outside the whiskers.
# To explore these further, let's use the boxplot.stats command....

boxplot.stats(precip_cm)
#This command shows the breakdown of the boxplot.
#stats shows the lower whisker, the bottom of the box, the median,
# the upper part of the box, and the upper whisker.
#n shows the number of observations (70)
# out shows the data that lie outside of the whiskers
# these are potential outliers, it's not suprising that Mobile, AL
# tops the list with the most average annual rainfall and that four
# desert cities are at the bottom (Pheonix, Reon, Albuquerque, and El Paso)



#####################
#Citation of Software
#####################

## R Core Team (2014). R: A language and environment for
## statistical computing. R Foundation for Statistical Computing,
## Vienna, Austria. URL http://www.R-project.org/.


