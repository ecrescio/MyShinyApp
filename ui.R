#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(

    # Application title
    titlePanel("Distribuciones muestrales"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
           
            
            
            selectInput("selected_dist",
                        "Variable:",
                        choices = list("normal", "gamma"),
                        selected = "normal"),  
            
            numericInput("n_samp",
                         "Num. elementos de la muestra:",
                         min = 1,
                         max = 1000,
                         value = 30),
            
            numericInput("n_sim",
                         "Num. de muestras:",
                         min = 1,
                         max = 30000,
                         value = 15000), 
            
            
       
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot"),
            plotOutput("samplingPlot")
            #verbatimTextOutput("sampling_mean"),
            #verbatimTextOutput("sampling_se")
        )
    )
))

