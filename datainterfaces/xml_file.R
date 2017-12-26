library('XML')
library('methods')

input_file_path <- '/Users/mural.kummitha/work/R/datainterfaces/data/input.xml'

data <- xmlParse(input_file_path)

result <- xmlToDataFrame(input_file_path)

root_element <- xmlRoot(data)
size <- xmlSize(root_element)

print(size)
print(result)

# accessing elements

print(root_element[1])
