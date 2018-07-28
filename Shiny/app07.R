ui <- fluidPage(
  tags$head(
    tags$style(HTML("
/*
                    @import url(//fonts.googleapis.com/earlyaccess/nicomoji.css);
                    h1, h2, h3, h4, h5, h6, p {
                      font-family: 'Nico Moji', cursive;
                    }
*/

/*
                    @import url(//fonts.googleapis.com/earlyaccess/hannari.css);
                    h1, h2, h3, h4, h5, h6, p {
                      font-family: 'Hannari', serif;
                    }
*/
                    "))
  ),
  
  headerPanel("数字の入力練習"),
  fluidRow(
    column(6,
           numericInput("test_num", "数字を入力してね", value = NA, min = 0, max = 20)),
    column(6,
           sliderInput("test_slide", "スライドしよう", min = 0, max = 100, value = 20))
  ),
  dataTableOutput("test_table")
)

server <- function(input, output) {
  check_var <- reactive(data.frame(num = input$test_num, slide = input$test_slide))
  output$test_table <- renderDataTable({as.data.frame(check_var())})
}

shinyApp(ui = ui, server = server)