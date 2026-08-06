# Create Dataset
hospital <- data.frame(
  Patient_ID = c(1,2,3,4,5),
  Appointment_Status = c("Attended","Missed","Attended","Missed","Attended")
)

# Count Appointment Status
status <- table(hospital$Appointment_Status)

# Pie Chart
pie(
  status,
  col = c("lightgreen","orange"),
  main = "Appointment Status Distribution"
)