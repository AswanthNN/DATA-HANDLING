# Create Dataset
energy <- data.frame(
  Temperature = c(15,24,20,18,28,30),
  Units_Consumed = c(320,540,880,350,610,920),
  Peak_Hours = c(4,6,8,5,7,9)
)

# Bubble Scatter Plot
symbols(
  energy$Temperature,
  energy$Units_Consumed,
  circles = energy$Peak_Hours,
  inches = 0.3,
  bg = rgb(0,0,1,0.4),
  fg = "blue",
  xlab = "Temperature (°C)",
  ylab = "Units Consumed (kWh)",
  main = "Temperature vs Units Consumed"
)