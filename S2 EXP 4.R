library(wordcloud)

feedback <- c("Good service",
              "Excellent support",
              "Very satisfied",
              "Good experience",
              "Excellent quality")

wordcloud(feedback,
          random.order=FALSE,
          colors=rainbow(5))