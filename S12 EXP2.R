# Create sample category data
inventory <- matrix(
  c(120, 130,
    80, 95,
    140, 160),
  nrow = 2,
  byrow = FALSE
)

colnames(inventory) <- c("Product A", "Product B", "Product C")
rownames(inventory) <- c("Category 1", "Category 2")

# Stacked Bar Chart
barplot(
  inventory,
  col = c("lightblue", "orange"),
  xlab = "Products",
  ylab = "Quantity",
  main = "Product Quantity by Category",
  legend.text = rownames(inventory)
)