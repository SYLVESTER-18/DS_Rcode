#earthquakes dataset
earthquakes<-datasets::quakes

#summary
summary(earthquakes)

#ploting datset
plot(earthquakes)
plot(earthquakes[,c(1,2)])

#barplot dataset
barplot(earthquakes$depth)
barplot(earthquakes$mag ,horiz = T,axes = T)

#Histogram of Dataset
hist(earthquakes$depth)
hist(earthquakes$mag ,axes = T,col = 'red',xlab = 'index',
     ylab = 'frequency',main = 'Magnitude data')

#Boxplot of dataset
boxplot(earthquakes)
boxplot(earthquakes$depth)
boxplot(earthquakes$mag)
boxplot(earthquakes$mag)$out


#Multiple outputs
par(mfrow=c(3,3),mar=c(2,5,2,1), las=0, bty ='o')
plot(earthquakes$depth)
boxplot(earthquakes$mag)
hist(earthquakes$depth)
barplot(earthquakes$depth)
hist(earthquakes$mag ,axes = T,col = 'red',xlab = 'index',
     ylab = 'frequency',main = 'Magnitude data')
barplot(earthquakes$mag ,horiz = T,axes = T)
boxplot(earthquakes)
hist(earthquakes$depth , axes = T,col = 'blue')

#variance, Skewness, Kurtosis 
var(earthquakes$depth)
moments::skewness(earthquakes)
moments::kurtosis(earthquakes) 
