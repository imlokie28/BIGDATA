wheat_data <- read.csv("F:/Bigdata assignment/wheat.csv")

wheat<- aov(wheat_data$yield~ factor(wheat_data$wheat_type))

summary(wheat)
