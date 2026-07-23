agegroup <- c("20-30","20-30","31-40","20-30","31-40")
score <- c(4,5,3,4,5)

data <- table(agegroup,score)

barplot(data,
        main="Customer Satisfaction by Age Group",
        xlab="Age Group",
        ylab="Number of Customers",
        legend=rownames(data),
        col=c("blue","green"))