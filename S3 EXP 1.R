employee <- c(1,2,3,4,5)
score <- c(85,92,78,90,76)

plot(employee, score,
     type="o",
     col="blue",
     xlab="Employee ID",
     ylab="Performance Score",
     main="Employee Performance Trend")

legend("topright",
       legend="Performance Score",
       col="blue",
       lty=1,
       pch=1)