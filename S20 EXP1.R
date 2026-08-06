# Create Dataset
hospital <- data.frame(
  Patient_ID = c(1,2,3,4,5),
  Age = c(25,40,35,50,29),
  Waiting_Time = c(2,5,1,7,3),
  Appointment_Status = c("Attended","Missed","Attended","Missed","Attended")
)

# Histogram
hist(
  hospital$Age,
  col = "lightblue",
  border = "black",
  main = "Histogram of Patient Ages",
  xlab = "Age (Years)",
  ylab = "Frequency"
)