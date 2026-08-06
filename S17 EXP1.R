# Install package (Run only once)
#install.packages("ggplot2")

# Load library
library(ggplot2)

# Create Dataset
vehicle <- data.frame(
  Vehicle_ID = c("V1","V2","V3","V4","V5"),
  Engine_Size = c(1.5,2.0,3.0,2.5,1.8),
  Horsepower = c(110,150,250,200,130),
  Fuel_Efficiency = c(18,15,12,14,17),
  Top_Speed = c(180,200,250,220,190),
  Safety_Rating = factor(c(4,5,5,4,3))
)

# Violin Plot
ggplot(vehicle, aes(x = Safety_Rating,
                    y = Fuel_Efficiency,
                    fill = Safety_Rating)) +
  geom_violin(trim = FALSE) +
  geom_boxplot(width = 0.1, fill = "white") +
  labs(title = "Fuel Efficiency by Safety Rating",
       x = "Safety Rating",
       y = "Fuel Efficiency (km/l)") +
  theme_minimal()