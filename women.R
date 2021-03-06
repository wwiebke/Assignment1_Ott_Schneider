
##################################
# Assignment 1: Data Science Course
# Kyle Ott & Cornelius Schneider
# 26 September 2014
##################################


##################################################
# Average Heights and Weights for American Women #
##################################################


# Select the dataset
data(women)
?women
# This data set provides the average heights (in) and 
# weights (lbs) for American women aged 30–39.

# What are the variables?
names(women)
# height & weight 

# Convert the variables in centimeters and kilograms
women$height_cm<-women$height*2.54
women$weight_kg<-women$weight*0.45359237

# Descriptive Statistics on the Distribution
#########
summary(women)
# Women's height in this dataset is between 147.3 and 182.9 cm
# and the median equals the mean with 165.1 cm.
# Women's weight in this dataset is between 52.15 and 74.39 km
# with a median of 61.23 kg and a mean of 62.02 kg.

# Histogram for Height
hist(women$height_cm,
     main='Average Height for American Women',
     xlab='Height in Centimeters') 
# Most women have a height between 160 and 180 cm (8 women). 
# Only two are between 140 and 150 centimeters and two are 
# between 180 and 190 centimeters. 
# In a first impression this is a slighly right skewed normal distribution.

# Histogram for Weight
hist(women$weight_kg,
     main='Average Weight for American Women',
     xlab='Weight in Kilograms') 
# Most women (4 out of 15) weigh between 55kg and 60kg and the fewest (2 out of 15)
# weigh between 70kg and 75kg. All other are equally distributed.

# Plot
plot(women$height_cm, women$weight_kg,main='Joint Distribution',
     xlab='Height in Centimeters',
     ylab='Weight in Kilograms')
# The plot clearly shows a positive relationship between height and weight.
# No outliers can be observed in this sample. 

# Variance for Height in Centimeters
var(women$height_cm)
# [1] 129.032

# Variance for Weight in Kilogram
var(women$weight_kg)
# [1] 49.42216

# Standard Deviation for Height in Centimeners
sd(women$height_cm)
# [1] 11.35923

# Standard Deviation for Weight in Kilograms
sd(women$weight_kg)
# [1] 7.030089



#####################
#Citation of Software
#####################

citation()

## R Core Team (2014). R: A language and environment for
## statistical computing. R Foundation for Statistical Computing,
## Vienna, Austria. URL http://www.R-project.org/.


