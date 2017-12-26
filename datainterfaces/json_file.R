file_path <- '/Users/mural.kummitha/work/R/datainterfaces/data/input.json'
library('rjson')

json_data <- fromJSON(file = file_path)
print(json_data)

print(as.data.frame(json_data))

print((json_data$Salary))