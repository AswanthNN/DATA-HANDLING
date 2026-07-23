gender <- c("Female","Male","Female")

pie(table(gender),
    main="Customer Gender Distribution",
    labels=names(table(gender)),
    col=c("pink","lightblue"))