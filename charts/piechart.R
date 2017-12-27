output_file_path <- '/Users/mural.kummitha/work/R/charts/output/pie.png'
output_file_path2 <- '/Users/mural.kummitha/work/R/charts/output/pie2.png'
output_file_path3 <- '/Users/mural.kummitha/work/R/charts/output/pie3.png'
output_file_3d <- '/Users/mural.kummitha/work/R/charts/output/pie3d.png'

library(plotrix)

draw.simple_piechart <- function(series, label, output_path) {
  png(file = output_path)
  pie(series, label)
  dev.off()
}

draw.rgb_piechart <- function(series, label, output_path) {
  png(file = output_path)
  pie(series, label, main = "Population", col = rainbow(length(series)))
  dev.off()
}

draw.piechart_with_percentage <- function(series, label, output_path) {
  png(file = output_path)
  percentage <- round(100*series/sum(series), 1)
  pie(series, labels = percentage, main = 'Population in %', col = rainbow(length(series))) 
  legend("topright", label, cex = 0.8, fill = rainbow(length(series)))
  dev.off()
}

draw.3dchart <- function(series, label, output_path) {
  png(file = output_path)
  percentage <- round(100*series/sum(series), 1)
  pie3D(series, labels = percentage, main = 'Population in %', explode = 0.4, col = rainbow(length(series)))
  legend("topright", label, cex = 0.8, fill = rainbow(length(series)))
  dev.off()
}

t <-  c(21, 62, 10, 83)
lab <- c("London", "New York", "Singapore", "Mumbai")
draw.simple_piechart(t, lab, output_file_path)
draw.rgb_piechart(t, lab, output_file_path2)
draw.piechart_with_percentage(t, lab, output_file_path3)
draw.3dchart(t, lab, output_file_3d)

