Country = c("Brazil","China","India","Switzerland", "USA")
LifeExpectancy <- c(74, 76, 65, 83, 79)
Data = data.frame(Country,LifeExpectancy)

Population = c(199000, 1390000, 1240000, 7997, 318000)
#Add observation
Data2 = cbind(Data,Population)
Country <- c("Autralia", "Greece")
LifeExpectancy <- c(82,81)
Population <- c(23050, 11125)
NewData = data.frame(Country, LifeExpectancy, Population)
#Add data to existing frame
Data3 <- rbind(Data2, NewData)

#Reading and writing to file
getwd()
WHO <- read.csv("WHO.csv")
WHO
str(WHO)
summary(WHO)
WHO_Europe <- subset(WHO, Region=="Europe")
 str(WHO_Europe)
summary(WHO_Europe)
write.csv(WHO_Europe,"WHO_Europe.csv")
ls()
rm(WHO_Europe)

#Working with data
WHO$Under15
mean(WHO$Under15)
sd(WHO$Under15)
summary(WHO$Under15)
which.min(WHO$Under15)
WHO$Country[86]
which.max(WHO$Under15)
WHO$Country[124]
plot(WHO$GNI,WHO$FertilityRate)
Outliers <- subset(WHO, GNI > 10000 & FertilityRate > 2.5)
nrow(Outliers)
Outliers[c("Country","GNI","FertilityRate")]
hist(WHO$CellularSubscribers)
boxplot(WHO$LifeExpectancy ~ WHO$Region)
boxplot(WHO$LifeExpectancy ~ WHO$Region,xlab="Region",ylab="Life Expectancy",main="Life Expectancy of Countries by Region")
table(WHO$Region)
#Pass a function pointer as third argument to execute that func
tapply(WHO$Over60, WHO$Region, mean)
tapply(WHO$LiteracyRate, WHO$Region, min)
tapply(WHO$LiteracyRate, WHO$Region, min, na.rm=T)





