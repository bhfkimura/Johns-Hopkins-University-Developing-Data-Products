library(shiny)
fluidPage(
    titlePanel("Predictions from iris dataset"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("sliderLength", label = "What is the sepal length?", min = 4, max = 8, value = 6, step = 0.1),
            sliderInput("sliderWidth", label = "What is the sepal width?", min = 1.5, max = 5, value = 3, step = 0.1),
            checkboxInput("showsetosa", label = "Show/Hide setosa", value = TRUE),
            checkboxInput("showversicolor", label = "Show/Hide versicolor", value = TRUE),
            checkboxInput("showvirginica", label = "Show/Hide virginica", value = TRUE)
        ),
        mainPanel(
            plotOutput("plot1"),
            h3("Predicted petal length:"),
            textOutput("pred1"),
            plotOutput("plot2"),
            h3("Predicted petal width:"),
            textOutput("pred2")
        )
    )
)

