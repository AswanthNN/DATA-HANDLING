sales <- matrix(c(2000,1500,1200,
                  2200,1800,1400,
                  2400,1600,1100),
                nrow=3)

colnames(sales) <- c("January","February","March")
rownames(sales) <- c("Product A","Product B","Product C")

barplot(sales,
        beside=TRUE,
        col=c("red","blue","green"),
        main="Monthly Product Sales",
        xlab="Month",
        ylab="Sales",
        legend=rownames(sales))