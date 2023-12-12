
library(lattice)
data <- read.csv("F:/Bigdata assignment/diabetes.csv")
print(data)

histogram(~Glucose|BMI,data=data)
histogram(~Glucose|Age,data=data)
histogram(~Age|BMI,data=data)

colnames(data)