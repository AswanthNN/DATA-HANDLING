# Create Dataset
energy <- data.frame(
  Sector = c("Residential","Commercial","Industrial",
             "Residential","Commercial","Industrial"),
  Renewable_Usage = c(22,18,12,25,20,15)
)

# Average Renewable Usage
avg_usage <- aggregate(Renewable_Usage ~ Sector,
                       data = energy,
                       mean)

print(avg_usage)

# Bar Chart
barplot(
  avg_usage$Renewable_Usage,
  names.arg = avg_usage$Sector,
  col = "lightgreen",
  xlab = "Sector",
  ylab = "Average Renewable Usage (%)",
  main = "Average Renewable Usage by Sector"
)