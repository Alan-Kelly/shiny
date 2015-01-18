library(ggplot2)
library(lubridate)
library(dplyr)
data<-read.csv("activity.csv")
data$date<-ymd(data$date)
data$interval<-as.numeric(as.factor(data$interval))
stepsByDay <- data %>%
  group_by(date) %>%
  summarise(totalsteps = sum(steps))

shinyServer(
  function(input, output) {
    output$activity <- renderPlot({
      g<-ggplot(stepsByDay, aes(date,totalsteps)) 
      g+geom_point() + geom_bar(stat="identity",colour="red",fill="green")+
        labs(title="Total Steps per Day")+
        theme(axis.text.x=element_text(angle=-90))
           
    })

    output$text1 <- renderText(
      if (input$showmean) {
        Mean<-round(mean(stepsByDay$totalsteps,na.rm=TRUE),0)
        paste( "The mean value of steps / day is ",Mean)})
                            
    }
 )