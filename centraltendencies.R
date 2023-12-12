
x <- c(20,30,40,50,60,70,80,90,100,20,30,20)

avg <- mean(x)
print(avg)

median <- median(x)
print(median)

mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

mode <- mode(x)
print(mode)

variance <- var(x)
print(variance)


sd.result <- sd(x)
print(sd.result)