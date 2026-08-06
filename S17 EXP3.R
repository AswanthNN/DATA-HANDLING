# Install packages (Run only once)
install.packages("corrplot")

# Load library
library(corrplot)

# Create Dataset
vehicle <- data.frame(
  Engine_Size = c(1.5,2.0,3.0,2.5,1.8),
  Horsepower = c(110,150,250,200,130),
  Fuel_Efficiency = c(18,15,12,14,17),
  Top_Speed = c(180,200,250,220,190),
  Safety_Rating = c(4,5,5,4,3)
)

# Correlation Matrix
cor_matrix <- cor(vehicle)

# Heatmap
corrplot(
  cor_matrix,
  method = "color",
  addCoef.col = "black",
  tl.col = "black",
  number.cex = 0.8
)