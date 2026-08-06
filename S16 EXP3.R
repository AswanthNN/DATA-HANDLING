# Create Dataset
patient <- data.frame(
  Age = c(25,40,55,35,60),
  BMI = c(22,28,30,26,32),
  BP = c(120,135,145,130,150),
  Cholesterol = c(180,210,240,200,260)
)

# Calculate Averages
avg <- colMeans(patient)

# Bar Chart
barplot(
  avg,
  col = c("skyblue","lightgreen","orange","pink"),
  xlab = "Health Indicators",
  ylab = "Average Value",
  main = "Average Health Indicators of Patients"
)