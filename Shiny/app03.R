ui <- fluidPage(
  titlePanel("numericInput&sliderInput"),
  fluidRow(
    column(6,
           numericInput("test_num", "数字を入力してね", value = NA, min = 0, max = 20)),
    column(6,
            sliderInput("test_slide", "スライドしよう", min = 0, max = 100, value = 20))
  ),
  textOutput("test_text")
)

server <- function(input, output) {
  reactive_test_num <- reactive(list(input$test_num, input$test_slide))
  output$test_text <- renderText({
    paste0("入力した数字は,", reactive_test_num()[[1]], "スライダーの数字は,", reactive_test_num()[[2]])
  })
}

shinyApp(ui = ui, server = server)
