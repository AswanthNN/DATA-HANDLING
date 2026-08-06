# Install package (Run only once)
install.packages("plotly")

# Load library
library(plotly)

# Create dataset
category <- c("Electronics", "Appliances", "Clothing")
sales <- c(50000, 40000, 35000)

data <- data.frame(Category = category, Sales = sales)

# Generate Funnel Chart
plot_ly(
  data = data,
  y = ~Category,
  x = ~Sales,
  type = "funnel",
  textinfo = "label+value"
) %>%
  layout(
    title = "Sales Conversion Process by Product Category"
  )