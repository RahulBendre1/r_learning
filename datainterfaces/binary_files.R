input_file_path <- '/Users/mural.kummitha/work/R/datainterfaces/data/input_binary.csv'
dot_file_path <- '/Users/mural.kummitha/work/R/datainterfaces/data/binmtcars.dat'
write.table(mtcars, row.names = FALSE, file = input_file_path)

new_mt_cars <- read.table(input_file_path, sep = ",",header = TRUE,nrows = 5)
print(new_mt_cars)

write.filename = file(dot_file_path, "wb")

writeBin(colnames(new_mt_cars), write.filename)

print(c(new_mt_cars$cyl, new_mt_cars$am, new_mt_cars$gear))

writeBin(c(new_mt_cars$cyl, new_mt_cars$am, new_mt_cars$gear), write.filename)

close(write.filename)