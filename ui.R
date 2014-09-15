shinyUI(
  pageWithSidebar(
    headerPanel("Grade Calculator!!!"),
    sidebarPanel(
      
      
      textInput(inputId="text1", label=h5("Name")),
      numericInput('age', 'Age', ' ' , min = 17, max = 25, step = 7),
      sliderInput("u1", "Tenth:", 
                  min=60, max=100, value=60),
      sliderInput("r1", "Intermediate:", 
                  min=60, max=100, value=60),
      #submitButton('Submit')
      
      
      fluidRow(
        column(4,
               radioButtons("radio", label = h5("Education"),
                            choices = list("UnderGraduate", "Graduate",
                                           "PostGraduate", "Ph.D." ),selected = 1))
      ),
      
      
      numericInput('mark1', 'Marks1', ' ' , min = 50, max = 200, step = 5),
      numericInput('mark2', 'Marks2', ' ' , min = 50, max = 200, step = 5),
      numericInput('mark3', 'Marks3', ' ' , min = 50, max = 200, step = 5),
      numericInput('mark4', 'Marks4', ' ' , min = 50, max = 200, step = 5),
      numericInput('mark5', 'Marks5', ' ' , min = 50, max = 200, step = 5),
      
      
      
      actionButton("goButton",label = "Go!!")
    ),
    mainPanel(
      
      p('Name:'),
      textOutput('text1'),
      p('Age:'),
      verbatimTextOutput("inputValue"),
      tableOutput("values"),
     
      p('Education:'),
      textOutput('radio'),
      p('Student Marks:'),
      verbatimTextOutput('mark1'),
      verbatimTextOutput('mark2'),
      verbatimTextOutput('mark3'),
      verbatimTextOutput('mark4'),
      verbatimTextOutput('mark5'),
      p('Sum of Marks:'),
      verbatimTextOutput("sum"),
      
      p('Average:'),
      verbatimTextOutput('average')
    )
  )
)