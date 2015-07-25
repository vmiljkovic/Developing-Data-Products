library(shiny) 


shinyUI(
  pageWithSidebar
  (
    headerPanel("Body Mass Index (BMI) Calculator"),
    
    sidebarPanel
    (
      numericInput('weight', 'Insert weight in kilograms', 70) ,
      numericInput('height', 'Insert height in metres', 1.75 ,min = 0.4, max = 3),
      submitButton('Calculate')
    ), 
    mainPanel
    (
      p('The body mass index (BMI), or Quetelet index, is a value derived from the mass (weight) and height of an individual.'),
      p('The International Classification of adult underweight, overweight and obesity according to BMI:'),
      tags$div(
        tags$ul(
          tags$li('BMI <18.5        : Underweight'),
          tags$li('BMI [18.5-24.99] : Normal weight'),
          tags$li('BMI [25-29.99]   : Overweight'),
          tags$li('BMI >=30         : Obesity')
        )
      ),
      
      p('You have entered:'), 
      p('Weight:'), verbatimTextOutput("inputWeight"),
      p('Height:'), verbatimTextOutput("inputHeight"),
      p('Calculated BMI is:'),
      verbatimTextOutput("bmi"),
      p('Your diagnose is:'),strong(verbatimTextOutput("diagnose"))
    )
  )   
)