output_file_path <- '/Users/mural.kummitha/work/R/charts/output/boxplot.png'
output_file_path2 <- '/Users/mural.kummitha/work/R/charts/output/boxplot2.png'


draw.boxplot <- function(data, x, y, title, expresn, output_path) {
  png(file=output_path)
  boxplot(expresn, data = data, xlab = x, ylab = y, main = title)
  dev.off()
}

input <- head(mtcars[,c('mpg','cyl')])
print(head(input))

xaxis <- 'Number of Cylinders'
yaxis <- "Miles Per Gallon"
title <- "Mileage Data"
expresn <- mpg ~ cyl
draw.boxplot(input, xaxis, yaxis, title, expresn, output_file_path)
draw.boxplot(mtcars, xaxis, yaxis, title, expresn, output_file_path2)

# first six rows of data


