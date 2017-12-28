output_file_path <- '/Users/mural.kummitha/work/R/charts/output/line.png'
output_file_path2 <- '/Users/mural.kummitha/work/R/charts/output/line2.png'
output_file_path3 <- '/Users/mural.kummitha/work/R/charts/output/line3.png'

v <- c(7,12,28,3,41)
t <- c(14,7,6,19,3)

png(file = output_file_path)
plot(v, type='o')
dev.off()

png(file = output_file_path2)
plot(v,type = "o", col = "red", xlab = "Month", ylab = "Rain fall", main = "Rain fall chart")
dev.off()


png(file = output_file_path3)
plot(v, type='o', col='red', xlab = 'Month', ylab = 'Rain fall', main = 'Rain fall chart')
lines(t, type='p', col='blue')
dev.off()