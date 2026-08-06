# Create Dataset
student <- data.frame(
  Exam_Date = c("2025-01-10","2025-01-10",
                "2025-02-12","2025-02-12",
                "2025-03-15","2025-03-15"),
  Math_Score = c(62,80,55,90,72,82)
)

# Convert to Date
student$Exam_Date <- as.Date(student$Exam_Date)

# Extract Month
student$Month <- format(student$Exam_Date, "%Y-%m")

# Monthly Average
monthly_avg <- aggregate(Math_Score ~ Month,
                         data = student,
                         mean)

print(monthly_avg)

# Line Chart
plot(monthly_avg$Math_Score,
     type = "o",
     xaxt = "n",
     col = "blue",
     xlab = "Month",
     ylab = "Average Math Score",
     main = "Monthly Average Math Scores")

axis(1,
     at = 1:nrow(monthly_avg),
     labels = monthly_avg$Month)

# Moving Average
ma <- filter(monthly_avg$Math_Score,
             rep(1/2, 2),
             sides = 1)

lines(ma,
      type = "o",
      col = "red",
      lwd = 2)

legend("topleft",
       legend = c("Average","Moving Average"),
       col = c("blue","red"),
       lty = 1,
       pch = 1)