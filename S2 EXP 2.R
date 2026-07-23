score <- c(4, 5, 3, 4, 5)

pie(table(score),
    main = "Customer Satisfaction Scores",
    labels = names(table(score)),
    col = rainbow(3))