# Create vectors for Month and Sales
month <- c("January", "February", "March", "April", "May")
sales <- c(15000, 18000, 22000, 20000, 23000)

# Create the line chart
plot(sales,
     type = "o",                  # "o" = points connected by lines
     xaxt = "n",                  # Suppress default x-axis
     xlab = "Month",
     ylab = "Sales (in $)",
     main = "Monthly Sales Trend",
     col = "blue",
     pch = 16,
     lwd = 2)

# Add custom month labels to x-axis
axis(1, at = 1:5, labels = month)