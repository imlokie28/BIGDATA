# Load the data
x <- c(1.5,2.5,3.5,3.5,4.5,5.5,6)
y <- c(3.5,4.5,4.5,5.5,6,8,9)

# Fit the linear regression model
model <- lm(y ~ x)

# Check the linear regression assumptions
plot(model)

# Extract the regression coefficients and other relevant information
summary(model)

newdata <- data.frame(x = c(9,10))
pred <- predict(model,newdata)
pred