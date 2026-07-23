# Create the dataset
student_data <- data.frame(
  Student_ID = c("L01","L02","L03","L04","L05","L06"),
  Gender = c("Male","Female","Male","Female","Male","Female"),
  Age = c(20,22,19,21,23,20),
  Course = c("R","R","SQL","R","R","SQL"),
  Study_Time = c(3.5,4.2,2.0,5.0,2.5,4.0),
  Videos_Watched = c(12,15,8,18,9,14),
  Quiz_Score = c(78,85,65,92,70,88),
  Login_Date = c("2025-01-05","2025-01-05",
                 "2025-02-08","2025-02-08",
                 "2025-03-12","2025-03-12")
)

# Convert Login_Date to Date format
student_data$Login_Date <- as.Date(student_data$Login_Date)

# Extract Month
student_data$Month <- format(student_data$Login_Date, "%Y-%m")

# Calculate Average Quiz Score per Month
monthly_avg <- aggregate(Quiz_Score ~ Month,
                         data = student_data,
                         mean)

# Display Average Quiz Scores
print(monthly_avg)

# Plot Line Chart
plot(monthly_avg$Quiz_Score,
     type = "o",
     col = "blue",
     pch = 16,
     xaxt = "n",
     xlab = "Month",
     ylab = "Average Quiz Score",
     main = "Monthly Average Quiz Score")

axis(1,
     at = 1:nrow(monthly_avg),
     labels = monthly_avg$Month)

# Calculate Moving Average (Window = 2)
moving_avg <- stats::filter(monthly_avg$Quiz_Score,
                            rep(1/2, 2),
                            sides = 1)

# Add Moving Average Line
lines(moving_avg,
      col = "red",
      lwd = 2)

# Add Legend
legend("bottomright",
       legend = c("Average Score", "Moving Average"),
       col = c("blue", "red"),
       lty = 1,
       pch = c(16, NA))