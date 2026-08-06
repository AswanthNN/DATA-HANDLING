# Create dataset
category <- c("Electronics", "Clothing", "Appliances")
sales <- c(50000, 35000, 40000)

# Create labels with percentages
labels <- paste(
  category,
  round(sales / sum(sales) * 100, 1),
  "%"
)

# Generate Pie Chart
pie(
  sales,
  labels = labels,
  main = "Sales Distribution Across Product Categories",
  col = rainbow(length(category))
)