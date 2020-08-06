#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
library(dplyr)
distrdata = data.frame('normal'= rnorm(10000,30,5),'gamma'=rgamma(10000,2,3))

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$distPlot <- renderPlot({
        print(input$selected_dist)
       ggplot(distrdata,aes(x=distrdata[[input$selected_dist]]))+geom_histogram()+xlab('Distribucion de la poblacion (x)')+theme(plot.margin = margin(1.8,.6,1.8,.6, "cm"),
                                                                                                                                 plot.background = element_rect(fill = "white"))
    })
    
 
    distr<-reactive({ 
        
        samples<-distrdata[[input$selected_dist]]
        samples %>% sample(size = input$n_samp * input$n_sim, replace = TRUE) %>%
                matrix(ncol = input$n_samp) %>%
                rowMeans() %>%
                data.frame(x_media = .)
    })
    
        output$samplingPlot <- renderPlot({
        x_min <- quantile(distrdata[[input$selected_dist]], 0.1)
        x_max <- quantile(distrdata[[input$selected_dist]], 0.9)
            
        ggplot(distr(),aes(x=x_media)) +geom_histogram(fill="red") +
        xlim(x_min, x_max) +
        ylim(0, input$n_sim * 0.35)+xlab('Distribucion muestral de la media de x')+theme(plot.margin = margin(1.8,.6,1.8,.6, "cm"))

    })
})
