addOperation <- function(mark1,mark2,mark3,mark4,mark5)  (mark1 +mark2+mark3+mark4+mark5) 
avg <- function(mark1,mark2,mark3,mark4,mark5)  (mark1 +mark2+mark3+mark4+mark5) / 5 

shinyServer(
  function(input,output) {
    
    
    sliderValues <- reactive({
      data.frame(
        Standard = c("Tenth", "Intermediate"),
        
        Percentage = c(input$u1,
                       input$r1),
        
        stringsAsFactors=FALSE)
    })
    output$values <- renderTable({
      sliderValues()
    })
    
    output$text1 <- renderText({input$text1})
    output$inputValue <-renderPrint({input$age})
    output$radio <- renderText({input$radio})
    output$mark1 <-renderPrint({input$mark1})
    output$mark2 <-renderPrint({input$mark2})
    output$mark3 <-renderPrint({input$mark3})
    output$mark4 <-renderPrint({input$mark4})
    output$mark5 <-renderPrint({input$mark5})
    output$sum <- renderPrint({addOperation(input$mark1,input$mark2,input$mark3,input$mark4,input$mark5)})
    output$average <- renderPrint({avg(input$mark1,input$mark2,input$mark3,input$mark4,input$mark5)})
    
  }
)