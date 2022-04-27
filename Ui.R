library(shiny)
library(dplyr)
library(sf)
library(tmap)
library(ggplot2)
shinyUI(
  fluidPage(
    titlePanel("Modularization Shiny App"),
    sidebarLayout(
      sidebarPanel(),
      mainPanel(
        plotOutput("Soil_box"),
        plotOutput("soil_map")
      )
    )
  )
)

