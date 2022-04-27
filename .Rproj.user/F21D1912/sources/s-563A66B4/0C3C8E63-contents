shinyServer(
  function(input,output,session){
    afsis.data <- read.csv("data/plotting_data.csv")
    afsis.data <- afsis.data %>%
      mutate(
        Depth = factor(Depth, levels = c("Topsoil", "Subsoil"),ordered = TRUE))%>%
      st_as_sf(coords =c("Longitude", "Latitude"), crs = 4326)
    output$Soil_box <- renderPlot({
      ggplot(afsis.data,aes(y=CORG, x = LandCover, color = Depth))+
        geom_boxplot()
    })
    
    output$soil_map <- renderPlot({
      data("World")
      
      World %>%
        filter(continent == "Africa")%>%
        tm_shape() + 
        tm_borders(col = "green") +
        tm_shape(afsis.data)+
        tm_dots(col = "LandCover", size = "CORG")
      
    }
      
    )
  }
)