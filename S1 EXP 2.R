product <- c("Laptop", "Mobile", "Tablet", "Printer", "Camera")
sales <- c(50, 80, 40, 30, 60)

barplot(sales,
        names.arg = product,
        xlab = "Products",
        ylab = "Sales",
        main = "Top-Selling Products",
        col = "blue")