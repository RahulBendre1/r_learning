list_data <- list(c("Jan", "Feb", "Mar"), matrix(c(2, 3, 4, 5, 6, 7), nrow = 2, ncol = 3, byrow = TRUE), c("bob", "alias"))
names(list_data) <- c("Months", "Numbers", "Names")

print(list_data[1])

print(list_data$Months)
print(list_data$Numbers)
print(list_data$Names)

# update/manipulate list elements

list_data$Months = c("Nov", "Dec")
list_data[4] = "hellow how r u ?"

print(list_data)

list_data[4] <- NULL

print(list_data[4])


# merging lists
v1 <- list(1, 2, 3)
v2 <- list("Jan", "Feb", "Mar")
print(merge(v1, v2))
print(c(v1, v2))

# list to vector

list1 <- list(1, 2, 3)
list2 <- list(4, 4, 5)

print(list1)
print(list2)

v1 <- unlist(list1)
v2 <- unlist(list2)

print(v1)
print(v2)

result <- v1 + v2
print(result)

