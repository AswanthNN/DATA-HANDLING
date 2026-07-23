jan <- c(2000,1500,1200)
feb <- c(2200,1800,1400)
mar <- c(2400,1600,1100)

sales <- rbind(jan,feb,mar)

x <- 1:3

matplot(x, t(sales),
        type="l",
        lwd=2,
        col=1:3,
        xlab="Month",
        ylab="Sales",
        main="Overall Sales Trend")

legend("topleft",
       legend=c("Product A","Product B","Product C"),
       col=1:3,
       lty=1)