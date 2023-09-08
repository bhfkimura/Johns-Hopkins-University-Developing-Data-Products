# README

## Data description

This so-called Fisher's or Anderson's iris data set provides us with measurements in centimeters of different sepal lengths and widths and petal lengths and widths for 50 flowers of 3 species of iris. The species of iris studied are *setosa*, *versicolor*, and *virginica*.

Iris is a data frame with 150 cases (rows) and five variables (columns) named **Sepal.Length**, **Sepal.Width**, **Petal.Length**, **Petal.Width**, and **Species**.

## The App

The application was deployed at *shinyapps.oi* and is available [here](https://bhfkimura.shinyapps.io/Course-Project-Shiny-Application-and-Reproducible-Pitch/).

### Input

On the left panel, the user can choose the desired value for the *Sepal length* and the *Sepal width*, which will be used in the prediction models. In addition, the user can check/uncheck the boxes that include/exclude data corresponding to *setosa*, *versicolor*, or *virginica*.

### Output

Based on the input, we construct two linear modes:

$$\text{Petal.Length}_i = \beta_0 + \beta_1 \times \text{Sepal.Length}_i + \epsilon_i$$

and 

$$\text{Petal.Width}_i = \beta_0' + \beta_1' \times \text{Sepal.Width}_i + \epsilon_i'$$

Then, in the right panel, we generate the plots with the selected data together with the corresponding fitted models and print the predicted values for the Petal length and Petal width.

## References

Fisher, R. A. (1936) The use of multiple measurements in taxonomic problems. Annals of Eugenics, 7, Part II, 179–188.

The data were collected by Anderson, Edgar (1935). The irises of the Gaspe Peninsula, Bulletin of the American Iris Society, 59, 2–5.
