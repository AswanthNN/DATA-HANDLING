date <- c("01-01","02-01","03-01","04-01","05-01")
ctr <- c(2.3,2.7,2.0,2.4,2.6)

barplot(ctr,
        names.arg=date,
        xlab="Date",
        ylab="Click-through Rate (%)",
        main="Top Click-through Rates",
        col="lightblue")