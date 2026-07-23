library(shiny)

month <- c("January","February","March","April","May")
sales <- c(15000,18000,22000,20000,23000)

ui <- fluidPage(
  titlePanel("Sales Dashboard"),
  
  selectInput("chart", "Choose Chart:",
              choices = c("Line Chart", "Bar Chart")),
  
  plotOutput("salesPlot")
)

server <- function(input, output) {
  
  output$salesPlot <- renderPlot({
    
    if(input$chart == "Line Chart"){
      plot(sales, type="l", xaxt="n",
           xlab="Month", ylab="Sales ($)",
           main="Monthly Sales")
      axis(1, 1:5, month)
    }
    
    if(input$chart == "Bar Chart"){
      barplot(sales,
              names.arg=month,
              xlab="Month", ylab="Sales ($)",
              main="Monthly Sales",
              col="blue")
    }
  })
}

shinyApp(ui, server)