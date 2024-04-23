library(shiny)
library(ggplot2)
library(dplyr)

ui <- fluidPage(
  titlePanel("Vancouver Weather Data Exploration"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Use the controls below to explore the weather dataset."),
      
      selectInput("variable", 
                  label = "Choose a variable to display",
                  choices = c("Temperature" = "temperature_2m_max",
                              "Humidity" = "rain_sum",
                              "Precipitation" = "precipitation_sum"),
                  selected = "temperature_2m_max"),
      
      numericInput("nrows", 
                   label = "Number of rows to display:", 
                   value = 10)
    ),
    
    mainPanel(
      plotOutput("histPlot"),
      dataTableOutput("viewData")
    )
  )
)

server <- function(input, output) {
  dataset <- reactive({
    data <- read.csv("../data/raw/van_weather.csv")
    data$date <- as.Date(data$date, format = "%Y-%m-%d") 
    data$month <- format(data$date, "%Y-%m") 
    return(data)
  })
  
  output$viewData <- renderDataTable({
    head(dataset(), n = input$nrows)
  })
  
  output$histPlot <- renderPlot({
    data <- dataset()
    # Aggregate data by month
    monthly_data <- data %>%
      group_by(month) %>%
      summarise(value = mean(get(input$variable), na.rm = TRUE)) %>%
      arrange(month)
    
    ggplot(monthly_data, aes(x = month, y = value)) + 
      geom_line(group=1, colour="dodgerblue") +
      labs(x = "Month", y = input$variable) + # Update the y-axis label
      theme_minimal() +
      theme(axis.text.x = element_text(angle = 45, hjust = 1))
  })
}

shinyApp(ui = ui, server = server)
