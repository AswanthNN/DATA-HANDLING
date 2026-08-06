# Install package (Run only once)
#install.packages("ggplot2")

# Load library
library(ggplot2)

# Create Dataset
vehicle <- data.frame(
  Engine_Size = c(1.5,2.0,3.0,2.5,1.8),
  Horsepower = c(110,150,250,200,130),
  Top_Speed = c(180,200,250,220,190)
)

# Scatter Plot
ggplot(vehicle,
       aes(x = Horsepower,
           y = Top_Speed,
           color = Engine_Size)) +
  geom_point(size = 4) +
  labs(title = "Horsepower vs Top Speed",
       x = "Horsepower",
       y = "Top Speed (km/h)",
       color = "Engine Size (L)") +
  theme_minimal()