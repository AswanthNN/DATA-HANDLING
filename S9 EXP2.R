# Create dataset
survey_data <- data.frame(
  Survey_ID = c(1,2,3),
  Question1 = c("A","B","C"),
  Question2 = c("B","A","A"),
  Question3 = c("C","D","B")
)

# Create frequency tables with same levels
q1 <- table(factor(survey_data$Question1, levels = c("A","B","C","D")))
q2 <- table(factor(survey_data$Question2, levels = c("A","B","C","D")))
q3 <- table(factor(survey_data$Question3, levels = c("A","B","C","D")))

# Combine into a matrix
response_table <- rbind(q1, q2, q3)

# Stacked Bar Chart
barplot(response_table,
        beside = FALSE,
        col = c("red","green","blue","yellow"),
        main = "Overall Distribution of Survey Responses",
        xlab = "Questions",
        ylab = "Frequency",
        legend.text = c("A","B","C","D"),
        names.arg = c("Question 1","Question 2","Question 3"))