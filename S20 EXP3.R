# Create Dataset
hospital <- data.frame(
  Patient_ID = c(1,2,3,4,5),
  Waiting_Time = c(2,5,1,7,3)
)

# Bar Chart
barplot(
  hospital$Waiting_Time,
  names.arg = hospital$Patient_ID,
  col = "skyblue",
  xlab = "Patient ID",
  ylab = "Waiting Time (Days)",
  main = "Waiting Time by Patient"
)