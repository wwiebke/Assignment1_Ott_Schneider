#########
#Average Heights and Weights for American Women
#########

#Pick the dataset
data(women)
?women

#What are the variables?
names(women)

#Convert the variables in centimeters and kilograms
women$height_cm<-women$height*2.54
women$weight_kg<-women$weight*0.45359237

#Descriptive Statistics on the Distribution
#########
summary(women)

#Histogram for Height
hist(women$height_cm,
     main='Average Height for American Women',
     xlab='Hight in Centimeters') 

#Histogram for Weight
hist(women$weight_kg,
     main='Average Weight for American Women',
     xlab='Hight in Kilograms') 

#Plot
plot(women$height_cm, women$weight_kg,main='Joint Distribution',
     xlab='Height in Centimeters',
     ylab='Weight in Kilograms')

#Variance for Height in Centimeters
var(women$height_cm)

#Variance for Weight in Kilogram
var(women$weight_kg)

#Standard Deviation for Height in Centimeners
sd(women$height_cm)

#Standard Deviation for Weight in Kilograms
sd(women$weight_kg)
