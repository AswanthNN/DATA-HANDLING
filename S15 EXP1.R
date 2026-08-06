# Create Dataset
student <- data.frame(
  Student_ID = c("S01","S02","S03","S04","S05","S06"),
  Gender = c("Male","Female","Male","Female","Male","Female"),
  Study_Hours = c(2.0,3.5,1.5,4.0,2.8,3.0),
  Attendance = c(78,90,70,95,85,92),
  Math_Score = c(62,80,55,90,72,82),
  Science_Score = c(65,85,58,92,74,86),
  Exam_Date = c("2025-01-10","2025-01-10",
                "2025-02-12","2025-02-12",
                "2025-03-15","2025-03-15")
)

# Histogram
hist(student$Math_Score,
     col = "lightblue",
     main = "Histogram of Math Scores",
     xlab = "Math Score",
     ylab = "Frequency")

# Boxplot
boxplot(Science_Score ~ Gender,
        data = student,
        col = c("pink","lightgreen"),
        main = "Science Score by Gender",
        xlab = "Gender",
        ylab = "Science Score")