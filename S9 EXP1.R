# Create dataset
survey_data <- data.frame(
  Survey_ID = c(1, 2, 3),
  Question1 = c("A", "B", "C"),
  Question2 = c("B", "A", "A"),
  Question3 = c("C", "D", "B")
)

# Count responses for Question 1
q1_count <- table(survey_data$Question1)

# Grouped Bar Chart
barplot(q1_count,
        col = c("red", "green", "blue"),
        main = "Distribution of Answers for Question 1",
        xlab = "Responses",
        ylab = "Frequency")