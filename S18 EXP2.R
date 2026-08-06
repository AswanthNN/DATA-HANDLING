# Create Dataset
student <- data.frame(
  Study_Hours = c(12,8,15,10,7),
  Attendance = c(90,70,95,85,60)
)

# Create Attendance Quartiles
student$Attendance_Quartile <- cut(
  student$Attendance,
  breaks = quantile(student$Attendance,
                    probs = seq(0,1,0.25)),
  include.lowest = TRUE,
  labels = c("Q1","Q2","Q3","Q4")
)

# Boxplot
boxplot(
  Study_Hours ~ Attendance_Quartile,
  data = student,
  col = c("skyblue","lightgreen","orange","pink"),
  xlab = "Attendance Quartiles",
  ylab = "Study Hours",
  main = "Study Hours by Attendance Quartiles"
)