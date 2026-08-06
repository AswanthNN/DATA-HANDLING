# Create dataset
date <- as.Date(c("2023-01-01", "2023-01-02", "2023-01-03"))
stockA <- c(100, 105, 110)
stockB <- c(150, 152, 148)
stockC <- c(120, 118, 122)

# Plot Stock A
plot(date, stockA,
     type = "o",
     col = "blue",
     ylim = c(95, 155),
     xlab = "Date",
     ylab = "Stock Price ($)",
     main = "Stock Prices Over Time")

# Add Stock B and Stock C
lines(date, stockB, type = "o", col = "red")
lines(date, stockC, type = "o", col = "green")

# Add Legend
legend("topleft",
       legend = c("Stock A", "Stock B", "Stock C"),
       col = c("blue", "red", "green"),
       lty = 1,
       pch = 1)