# Create Dataset
student <- data.frame(
  Test_Score = c(85,70,92,80,65)
)

# Density Plot
plot(
  density(student$Test_Score),
  col = "blue",
  lwd = 2,
  main = "Density Plot of Test Scores",
  xlab = "Test Score",
  ylab = "Density"
)

# Rug Plot
rug(student$Test_Score)