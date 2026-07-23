date <- c("01-01","02-01","03-01","04-01","05-01")
views <- c(1500,1600,1400,1650,1800)

plot(views,
     type="o",
     xaxt="n",
     xlab="Date",
     ylab="Page Views",
     main="Daily Page Views")

axis(1, at=1:5, labels=date)