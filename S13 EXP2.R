# Create dataset
stockA <- c(100, 105, 110)
date <- c("2023-01-02", "2023-01-03")

# Calculate percentage change
pct_change <- diff(stockA) / stockA[-length(stockA)] * 100

# Bar Chart
barplot(
  pct_change,
  names.arg = date,
  col = "orange",
  xlab = "Date",
  ylab = "Percentage Change (%)",
  main = "Daily Percentage Change in Stock A"
)