age <- c(28,35,42)
customer <- c("Customer 1","Customer 2","Customer 3")

barplot(age,
        names.arg=customer,
        main="Customer Age Distribution",
        xlab="Customers",
        ylab="Age",
        col="lightblue")