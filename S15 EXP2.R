# Create Dataset
student <- data.frame(
  Gender = c("Male","Female","Male","Female","Male","Female"),
  Study_Hours = c(2.0,3.5,1.5,4.0,2.8,3.0),
  Math_Score = c(62,80,55,90,72,82)
)

# Assign colors
colors <- ifelse(student$Gender == "Male", "blue", "red")

# Scatter Plot
plot(student$Study_Hours,
     student$Math_Score,
     pch = 19,
     col = colors,
     xlab = "Study Hours",
     ylab = "Math Score",
     main = "Study Hours vs Math Score")

# Regression Line
abline(lm(Math_Score ~ Study_Hours, data = student),
       col = "darkgreen",
       lwd = 2)

# Legend
legend("topleft",
       legend = c("Male","Female"),
       col = c("blue","red"),
       pch = 19)