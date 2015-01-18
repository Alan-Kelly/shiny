shinyUI(pageWithSidebar(
  
  headerPanel("Activity Plot"),
  sidebarPanel(
    p("The plot shows data from a personal activity monitoring device. The data consists of two months of monitoring and the total steps are displayed per day. Below you can calculate the average of the total steps per day"),
    checkboxInput("showmean", "Calculate Mean Steps / Day", 
                  value = FALSE)
  ),
  mainPanel(
    plotOutput('activity'),
    p(),
    textOutput('text1')
  )
))
