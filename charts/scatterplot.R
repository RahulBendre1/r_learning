output_file_path <- '/Users/mural.kummitha/work/R/charts/output/scatterplot.png'
output_file_path2 <- '/Users/mural.kummitha/work/R/charts/output/scatterplot2.png'

input <- mtcars[,c('wt','mpg')]

png(file = output_file_path)
plot(x = input$wt, y = input$mpg, xlab = 'Weight', ylab = 'Milage', xlim = c(2.5, 5), ylim = c(15, 30), main = 'Weight vs Milage')
dev.off()

png(file = output_file_path2)
pairs(~wt+mpg+disp+cyl, data = mtcars, main = 'Scattereplot Matrix')
dev.off()