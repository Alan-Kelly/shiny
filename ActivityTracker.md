Activity Tracker Demonstration Application
========================================================
author: Alan Kelly
date: Sat Jan 17 18:04:15 2015

Introduction
========================================================
id: slide1

This assignment makes use of data from a personal activity monitoring device. This device collects data at 5 minute intervals through out the day. The data consists of two months of data from an anonymous individual collected during the months of October and November, 2012 and include the number of steps taken in 5 minute intervals each day.



Data File & Data Transformation
========================================================


The application reads the data from an "activity.csv" file. 
The following R libraries are used: lubridate, dplyr and ggplot2   




The code
========================================================
 
 ```r
 data<-read.csv("activity.csv")
 data$date<-ymd(data$date)
 stepsByDay <- data %>%
  group_by(date) %>%
  summarise(totalsteps = sum(steps))
 Mean<-mean(stepsByDay$totalsteps,na.rm=TRUE)
 ```

The plot
========================================  
The plot shows a sum of the total steps recorded on each day.

![plot of chunk TotalSteps](ActivityTracker-figure/TotalSteps-1.png) 

Running the application
=====================
The application is running at: 
https://alan-kelly.shinyapps.io/activitytracker/

The interactive part of the application is the calculation and display of the mean value when that option is selected by the user.



[Go to slide 1](#/slide1)
