input_file <- read.csv('/Users/mural.kummitha/work/R/datainterfaces/data/input.csv')

print(input_file)

# if data frame
print(is.data.frame(input_file))

# no.of rows
print(nrow(input_file))

# no.of columns
print(ncol(input_file))


# get the maximum salary 

max_salary <- max(input_file$salary)
print(max_salary)

# get maximum salary of a person details

employee <- subset(input_file, max_salary == salary)
print(employee)


it_employees <- subset(input_file, dept == 'IT')
print(it_employees)

# get employees whose salary > 600

salaried_employees <- subset(input_file, salary > 600 & dept == 'IT')
print(salaried_employees)

# get people who joined on or before 2014

old_employees <- subset(input_file, as.Date(start_date) > as.Date("2014-01-01"))
print(old_employees)


# writting into csv file
cat('file exists?:', file.exists('output_file.csv'))
if (!file.exists('output_file.csv')) {
  file.create('output_file.csv')  
}

write.csv(old_employees, 'output_file.csv')

newdata <- read.csv("output.csv")

print(newdata)

print(getwd())
print(getwd())
