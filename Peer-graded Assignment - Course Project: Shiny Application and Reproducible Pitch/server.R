library(shiny)

function(input, output) {
    df <- reactive({
        aux <- data.frame(Species = c("setosa", "versicolor", "virginica"), 
                          LSpecies = c(input$showsetosa, input$showversicolor, input$showvirginica))
        iris[aux[match(iris$Species, aux$Species), 2], ]
    })
    
    model1 <- reactive({lm(Petal.Length ~ Sepal.Length, data = df())})
    model2 <- reactive({lm(Petal.Width ~ Sepal.Width, data = df())})
    

    model1pred <- reactive({
        Input <- input$sliderLength
        predict(model1(), newdata = data.frame(Sepal.Length = Input))
    })
    
    model2pred <- reactive({
        Input <- input$sliderWidth
        predict(model2(), newdata = data.frame(Sepal.Width = Input))
    })
    
    output$plot1 <- renderPlot({
        Input1 <- input$sliderLength
        plot(Petal.Length ~ Sepal.Length, 
                        data = df(),
                        xlab = "Sepal Length", 
                        ylab = "Petal Length", 
                        xlim = c(4,8),
                        ylim = c(0,7),
                        bty = "n", 
                        pch = 16,
                        col = Species)
        with(iris, legend("topleft", legend = levels(Species), fill = unique(Species)))
        abline(model1(), col = "red", lwd = 2)
        points(Input1, model1pred(), col = "red", pch = 16, cex = 2)
    })
    
    output$pred1 <- renderText({
        model1pred()
    })
    
    output$plot2 <- renderPlot({
        Input2 <- input$sliderWidth
        plot(Petal.Width ~ Sepal.Width, 
                        data = df(), 
                        xlab = "Sepal Width", 
                        ylab = "Petal Width", 
                        xlim = c(1.5,5),
                        ylim = c(0,2.5),
                        bty = "n", 
                        pch = 16,
                        col = Species)
        with(iris, legend("topright", legend = levels(Species), fill = unique(Species)))
        abline(model2(), col = "blue", lwd = 2)
        points(Input2, model2pred(), col = "blue", pch = 16, cex = 2)
    })
    
    output$pred2 <- renderText({
        model2pred()
    })
    
}