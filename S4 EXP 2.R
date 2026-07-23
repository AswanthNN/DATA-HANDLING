category <- c("Category 1","Category 1","Category 2","Category 2","Category 3")
quantity <- c(250,175,300,200,220)

data <- table(category, quantity)

barplot(data,
        main="Quantity by Product Category",
        xlab="Product Category",
        ylab="Quantity Available",
        col=c("blue","green","orange"),
        legend=rownames(data))