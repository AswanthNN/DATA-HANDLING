# Create Dataset
patient <- data.frame(
  Age = c(25,40,55,35,60),
  BMI = c(22,28,30,26,32),
  BP = c(120,135,145,130,150),
  Cholesterol = c(180,210,240,200,260)
)

# Scatterplot Matrix
pairs(
  patient,
  main = "Scatterplot Matrix of Health Indicators",
  pch = 19,
  col = "blue"
)