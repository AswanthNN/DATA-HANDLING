# Create dataset
product <- c("Product A", "Product B", "Product C")
quantity <- c(250, 175, 300)

# Bar Chart
barplot(
  quantity,
  names.arg = product,
  col = "skyblue",
  xlab = "Product Name",
  ylab = "Quantity Available",
  main = "Quantity Available for Each Product"
)