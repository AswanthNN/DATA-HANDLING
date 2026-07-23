# Create dataset
survey_data <- data.frame(
  Survey_ID = c(1, 2, 3),
  Question1 = c("A", "B", "C"),
  Question2 = c("B", "A", "A"),
  Question3 = c("C", "D", "B")
)

# Display the survey response table
print("Survey Response Data")
print(survey_data)

# Display with row names
rownames(survey_data) <- paste("Survey", survey_data$Survey_ID)

print(survey_data)