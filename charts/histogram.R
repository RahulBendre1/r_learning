output_file_path <- '/Users/mural.kummitha/work/R/charts/output/histogram.png'
output_file_path2 <- '/Users/mural.kummitha/work/R/charts/output/histogram2.png'
V <-  c(9,13,21,8,36,22,12,41,31,33,19)

draw.histogram <- function(data, xaxis, col, border, output_file_path) {
  png(file = output_file_path)
  hist(data, xlab = xaxis, col = col, border = border)
  dev.off()
}

draw.histogram_with_plots <- function(data, xaxis, col, border, xlim, ylim, breaks, output_file_path) {
  png(file = output_file_path)
  hist(data, xlab = xaxis, col = col, border = border, xlim = xlim, ylim = ylim, breaks = breaks)
  dev.off()
}


xaxis <- 'Weight'
xlim <- c(0, 40)
ylim <- c(0, 5)
breaks <- 5

draw.histogram(V, xaxis, 'yellow', 'blue', output_file_path)

# with breaks. 
draw.histogram_with_plots(V, xaxis, 'green', 'blue', xlim, ylim, breaks, output_file_path2)

