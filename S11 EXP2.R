# Create dataset
population <- c(500000, 700000, 600000)
temperature <- c(75, 68, 80)

# Scatter Plot
plot(
  population,
  temperature,
  pch = 19,
  col = "blue",
  xlab = "Population",
  ylab = "Average Temperature (°F)",
  main = "Population vs Average Temperature"
)

# Add city labels
text(
  population,
  temperature,
  labels = c("City A", "City B", "City C"),
  pos = 3
)