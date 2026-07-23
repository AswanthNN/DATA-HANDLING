product <- c("Product A","Product B","Product C","Product D","Product E")
quantity <- c(250,175,300,200,220)

barplot(quantity,
        names.arg=product,
        xlab="Product Name",
        ylab="Quantity Available",
        main="Product Inventory",
        col="lightblue")