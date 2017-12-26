# TODO: consider relative path for reading/writing data.
file_path <- "/Users/mural.kummitha/work/R/datainterfaces/data/input.xlsx"
output_file_path <- "/Users/mural.kummitha/work/R/datainterfaces/data/output.xlsx"
library("xlsx")

input_file <- read.xlsx(file_path, sheetIndex = 1)

sheet2 <- read.xlsx(file_path, sheetIndex = 2)

print(input_file)

result <- subset(input_file, dept == 'IT')
print(result)

print(sheet2)

cat('file exists?:', file.exists(output_file_path))
if (!file.exists(output_file_path)) {
  file.create(output_file_path)  
}


write.xlsx(result, output_file_path, sheetName = 'EmployeeDetails')
write.xlsx(sheet2, output_file_path, sheetName = 'Cities', append = TRUE)
