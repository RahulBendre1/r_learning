# mean of function --> avg 
# options available na.rm ==> remove NA values
# trim to remove no.of elements starting/ending of the series

v <- c(12,7,3,4.2,18,2,54,-21,8,-5)

mean.result <- mean(v)
print(mean.result)

mean.result <- mean(v, trim = 3)
print(mean.result)

x <- c(12,7,3,4.2,18,2,54,-21,8,-5,NA)
mean.result <- mean(x, na.rm = TRUE)
print(mean.result)


# median func -> middle value of the function
# na.rm ===> remove NA values

median.result <- median(v)
print(median.result)

# mode func -> highest number of occurances in a set data.
v <- c(12,7,3,4.2,18,2,54,-21,8,-5, 12, 4.2, 4.2, 12, 12)

func.getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

func.getmode(v)

