# Install package (Run only once)
#install.packages("ggplot2")
install.packages("reshape2")

# Load libraries
library(ggplot2)
library(reshape2)

# Create Dataset
student <- data.frame(
  Student_ID = c("S1","S2","S3","S4","S5"),
  Test_Score = c(85,70,92,80,65),
  Participation_Score = c(8,7,9,8,6)
)

# Convert data to long format
data_long <- melt(student, id.vars = "Student_ID")

# Stacked Area Chart
ggplot(data_long,
       aes(x = Student_ID,
           y = value,
           fill = variable,
           group = variable)) +
  geom_area() +
  labs(title = "Test and Participation Scores Across Students",
       x = "Student ID",
       y = "Score",
       fill = "Score Type") +
  theme_minimal()