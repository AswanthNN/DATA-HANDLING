# Create Dataset
cholesterol <- c(180,210,240,200,260)

# Q-Q Plot
qqnorm(cholesterol,
       main = "Q-Q Plot of Cholesterol")
qqline(cholesterol,
       col = "red",
       lwd = 2)

# ECDF Plot
plot(
  ecdf(cholesterol),
  main = "ECDF of Cholesterol Levels",
  xlab = "Cholesterol",
  ylab = "Cumulative Probability",
  col = "blue",
  lwd = 2
)