library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Finding the waist size of a Gaussian laser beam"),
        sidebarPanel(
                h3('Input Arguments'),
                h4('This computes variuos parameters of a laser beam given certain parameters'),
                numericInput('id1', 'Waist Size of beam in mm', 0.1, min = 0.01, max = 10, step = 0.01),
                numericInput('id2', 'Wavelength in nm', 532, min = 100, max = 2000, step = 1),
                numericInput('id3', 'Distance you want width of beam in mm', 0, min = 0, max = 1000, step = 1),
                submitButton("Submit")
        ),
        mainPanel(
                h4("Beam waist entered (mm):"),
                verbatimTextOutput("oid1"),
                h4("Wavelength entered (nm):"),
                verbatimTextOutput("oid2"),
                h4("Distance entered (mm):"),
                verbatimTextOutput("oid3"),
                
                h3("Beam Width (mm):"),
                verbatimTextOutput("myOutput")
        )
))