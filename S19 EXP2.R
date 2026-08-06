# Create Dataset
app <- data.frame(
  Screen_Time = c(4.5,6.0,3.2,7.1,2.8,5.4),
  Data_Used = c(2.4,3.8,1.6,4.5,1.2,3.1)
)

# Scatter Plot
plot(app$Data_Used,
     app$Screen_Time,
     pch = 19,
     col = "blue",
     xlab = "Data Used (GB)",
     ylab = "Screen Time (hrs)",
     main = "Data Used vs Screen Time")

# Regression Line
abline(lm(Screen_Time ~ Data_Used, data = app),
       col = "red",
       lwd = 2)

# Correlation
correlation <- cor(app$Data_Used, app$Screen_Time)
print(correlation)