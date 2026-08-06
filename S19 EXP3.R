# Create Dataset
app <- data.frame(
  Gender = c("Male","Female","Male","Female","Male","Female"),
  Satisfaction = c(3,5,3,5,2,4)
)

# Average Satisfaction
avg_sat <- aggregate(Satisfaction ~ Gender,
                     data = app,
                     mean)

print(avg_sat)

# Bar Chart
bars <- barplot(
  avg_sat$Satisfaction,
  names.arg = avg_sat$Gender,
  col = c("skyblue","pink"),
  ylim = c(0,6),
  xlab = "Gender",
  ylab = "Average Satisfaction",
  main = "Average Satisfaction by Gender"
)

# Value Labels
text(
  x = bars,
  y = avg_sat$Satisfaction + 0.2,
  labels = round(avg_sat$Satisfaction, 1)
)