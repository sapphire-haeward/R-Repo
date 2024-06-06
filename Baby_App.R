rm(list = ls())

# Load the Shiny package
library(shiny)
library(bslib)


# Define UI
ui <- fluidPage(
  
  # This is how you can change the theme if you need to
  theme = bs_theme(version = 4, bootswatch = "minty"),
  
  titlePanel("Sapphire's Miscellaneous ETL and Data Application"),
  
  sidebarLayout(
    sidebarPanel(
      h3("Sidebar Panel"),
      
      
      # Binary to Number Converter
      actionButton("BTC_growth_loss", "BTC Growth/Loss Analysis"),
      
      actionButton("button2", "Button 2")
    ),
    
    
    mainPanel(
      
      tabsetPanel(
        tabPanel("Tab 1",
                 h3("Content for Tab 1"),
                 actionButton("tab1_button1", "Tab 1 Button 1"),
                 actionButton("tab1_button2", "Tab 1 Button 2")
        ),
        tabPanel("Tab 2",
                 h3("Content for Tab 2"),
                 actionButton("tab2_button1", "Tab 2 Button 1"),
                 actionButton("tab2_button2", "Tab 2 Button 2")
        )
        
      )
    ) # end main panel
    
  )# end sidebar layout
)

# Define server logic
server <- function(input, output) {
  # Currently, no server-side logic is needed for empty buttons
  
  observeEvent(input$tradefile, {withProgress(message = "Creating Trade Upload File",{
    setwd("/Users/sapphirehaeward/Downloads/Misc_Application_Buttons")
    # source(".R")  # set value first, then `source`
  })
  })
  
  
}

# Run the application 
shinyApp(ui = ui, server = server)
