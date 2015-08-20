library(shiny)

beamWidth <- function(w0, wavelength, z) w0*sqrt(1+(z*(wavelength/1e6)/(pi*w0^2))^2)
shinyServer(
        function(input, output){
                output$oid1 <- renderPrint({input$id1})
                output$oid2 <- renderPrint({input$id2})
                output$oid3 <- renderPrint({input$id3})
                output$myOutput <- renderPrint({beamWidth(input$id1,input$id2, input$id3)})
        }
)