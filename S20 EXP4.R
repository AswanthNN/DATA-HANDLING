# Create Dataset
hospital <- data.frame(
  Age = c(25,40,35,50,29),
  Waiting_Time = c(2,5,1,7,3)
)

# Scatter Plot
plot(
  hospital$Age,
  hospital$Waiting_Time,
  pch = 19,
  col = "blue",
  xlab = "Age (Years)",
  ylab = "Waiting Time (Days)",
  main = "Age vs Waiting Time"
)

# Regression Line
abline(
  lm(Waiting_Time ~ Age, data = hospital),
  col = "red",
  lwd = 2
)