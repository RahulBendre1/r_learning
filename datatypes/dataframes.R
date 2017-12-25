t <- c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11", "2015-03-27")
print(t)
print(as.character.Date(t))
print(as.Date(t)) # date
print(class(as.Date(t)[0])) # date


emp.data <- data.frame(
  emp_id = c(1:5),
  emp_name = c("Rick", "Bob", "Alen", "Teddy", "Max"),
  age = c(32, 34.6, 22, 34, 42),
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11", "2015-03-27")), 
  stringsAsFactors = FALSE
)

print(emp.data)

print(str(emp.data))
print(emp.data$start_date)

print(summary(emp.data))

print(emp.data[c(1,2),])

print(emp.data[, 2:3])

print(emp.data[, c(2, 3)])

print(emp.data[3:5, 2:4])


emp.data$department <- c("IT", "CSE", "EEE", "ECE", "CSE")
print(emp.data)


# Create the first data frame.
emp.data <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  dept = c("IT","Operations","IT","HR","Finance"),
  stringsAsFactors = FALSE
)

# Create the second data frame
emp.newdata <- 	data.frame(
  emp_id = c (6:8), 
  emp_name = c("Rasmi","Pranab","Tusar"),
  salary = c(578.0,722.5,632.8), 
  start_date = as.Date(c("2013-05-21","2013-07-30","2014-06-17")),
  dept = c("IT","Operations","Fianance"),
  stringsAsFactors = FALSE
)


all_employees.data <- rbind(emp.data, emp.newdata)
print(all_employees.data)