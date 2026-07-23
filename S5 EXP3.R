likes <- c(50,60,55,70,65)
shares <- c(20,25,18,22,30)
comments <- c(15,18,12,20,16)

interaction <- rbind(likes, shares, comments)

x <- 1:5

plot(x, likes,
     type="n",
     ylim=c(0,120),
     xlab="Day",
     ylab="Interactions",
     main="User Interactions")

polygon(c(x,rev(x)),
        c(rep(0,5),rev(likes)),
        col="lightblue")

polygon(c(x,rev(x)),
        c(likes,rev(likes+shares)),
        col="lightgreen")

polygon(c(x,rev(x)),
        c(likes+shares,
          rev(likes+shares+comments)),
        col="pink")

legend("topleft",
       legend=c("Likes","Shares","Comments"),
       fill=c("lightblue","lightgreen","pink"))