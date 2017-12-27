output_file_path <- '/Users/mural.kummitha/work/R/charts/output/bar.png'
output_file_path2 <- '/Users/mural.kummitha/work/R/charts/output/bar2.png'
output_file_path3 <- '/Users/mural.kummitha/work/R/charts/output/stacked.png'

draw.simple_barchart <- function(series, output_path) {
  png(file = output_path)
  barplot(series)
  dev.off()
}

draw.rgb_barchart <- function(series, label, output_path) {
  png(file = output_path)
  barplot(series, names.arg = label, main = 'Revenue per Month', xlab = "Month", ylab = "Revenue", col = "yellow", border = 'red')
  dev.off()
}

draw.stackedgraph <- function(series, label, colors, output_path) {
  png(file = output_path)
  barplot(Values,main = "total revenue", names.arg = label, xlab = "month",ylab = "revenue", col = colors)
  dev.off()
}

t <- c(7, 12, 28, 3, 41)
label <- c("Mar","Apr","May","Jun","Jul")
draw.simple_barchart(t, output_file_path)
draw.rgb_barchart(t, label, output_file_path2)

# stacked graphs
colors <- c("green","orange","brown")
months <- c("Mar","Apr","May","Jun","Jul")
regions <- c("East","West","North")
Values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11), nrow = 3,ncol = 5,byrow = TRUE)
draw.stackedgraph(Values, months, colors, output_file_path3)
