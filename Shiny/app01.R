ui <- fluidPage(
  titlePanel("たいとる"),
  mainPanel(),
  sidebarPanel()
)

server <- function(input, output) {
  
}

shinyApp(ui = ui, server = server)
