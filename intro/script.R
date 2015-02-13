Country = c("Brazil","China","India","Switzerland", "USA")
LifeExpectancy <- c(74, 76, 65, 83, 79)
Data = data.frame(Country,LifeExpectancy)

Population = c(199000, 1390000, 1240000, 7997, 318000)
//Add observation
Data2 = cbind(Data,Population)
Country <- c("Autralia", "Greece")
LifeExpectancy <- c(82,81)
Population <- c(23050, 11125)
NewData = data.frame(Country, LifeExpectancy, Population)
//Add data to existing frame
Data3 <- rbind(Data2, NewData)
