library(shiny)

# weight in kg, height in m
calculateBMI<-function(weight,height) 
{
  round(weight/(height^2),digits=2)
}

diagnose<-function(weight,height)
{
  bmi <- calculateBMI(weight,height)
  ifelse(bmi<18.5,"Underweight",ifelse(bmi<25,"Normal weight",ifelse(bmi<30,"Overweight","Obesity")))
}

shinyServer(
  function(input, output) 
  {  
    output$inputWeight <- renderPrint({input$weight})
    output$inputHeight <- renderPrint({input$height})
    output$bmi <- renderPrint({calculateBMI(input$weight,input$height)})
    output$diagnose <- renderPrint({diagnose(input$weight,input$height)})
  } 
)