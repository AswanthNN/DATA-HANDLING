department <- c("Sales","HR","Marketing","Sales","HR")

barplot(table(department),
        main="Employees by Department",
        xlab="Department",
        ylab="Number of Employees",
        col="lightgreen")