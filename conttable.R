data <- data.frame(
  Person = c(1, 2, 3, 4, 5),
  Gender = c("Male", "Female", "Male", "Male", "Female"),
  Employed = c("Yes", "No", "Yes", "No", "Yes"),
  Percent = c(94, 88, 91, 80, 89)
)

print(data)

#Contingency table

cont_table <- table(data$Gender, data$Employed)
cont_table <- addmargins(cont_table)

print(cont_table)


#Aggregation

mean <- mean(data$Percent)
print(mean)

max<- max(data$Percent)
print(max)

min <- min(data$Percent)
print(min)


