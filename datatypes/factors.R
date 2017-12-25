data <- c("East","West","East","North","North","East","West","West","West","East","North")

print(data)
print(is.factor(data))

f <- factor(data)

print(f)
print(is.factor(f))


height <- c(132,151,162,139,166,147,122)
weight <- c(48,49,66,53,67,52,40)
gender <- c("male","male","female","female","male","female","male")
# all the lements will be converted into char set
simple <- c('hey', 2, "female","female","male","female","male")

data_set <- data.frame(height, weight, gender, simple)

print(data_set)
print(is.factor(data_set))
print(data_set$height)
print(data_set$gender)
print(data_set$simple)

print(simple)
print(simple[2])

# generating factor levels.

gf <- gl(3, 4, labels = c('green', 'yellow', 'blue'))
print(gf)
