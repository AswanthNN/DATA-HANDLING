# Create Dataset
energy <- data.frame(
  Sector = c("Residential","Commercial","Industrial",
             "Residential","Commercial","Industrial"),
  Region = c("North","South","West","East","North","South"),
  Month = c("Jan","Jan","Feb","Feb","Mar","Mar"),
  Temperature = c(15,24,20,18,28,30),
  Units_Consumed = c(320,540,880,350,610,920),
  Cost = c(2100,3600,5900,2300,4100,6200),
  Renewable_Usage = c(22,18,12,25,20,15),
  Peak_Hours = c(4,6,8,5,7,9)
)

# Histogram
hist(energy$Units_Consumed,
     probability = TRUE,
     col = "lightblue",
     xlab = "Units Consumed (kWh)",
     main = "Histogram and Density Plot")

# Density Plot
lines(density(energy$Units_Consumed),
      col = "red",
      lwd = 2)