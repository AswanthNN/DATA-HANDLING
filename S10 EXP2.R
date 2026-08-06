# Create dataset
category <- c("Electronics", "Clothing", "Appliances")
sales <- c(50000, 35000, 40000)

# Create table
sales_data <- data.frame(
  "Product Category" = category,
  "Sales ($)" = sales
)

# Display table
print(sales_data)