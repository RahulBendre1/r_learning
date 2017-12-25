# arrays can be multi dimensional representation of matrix

vector1 <- c(3, 4, 5)
vector2 <- c(6, 7, 8, 9, 10, 11, 12)

row.names <- c('row1', 'row2', 'row3')
columns.names <- c('col1', 'col2', 'col3')
matrix.names <- c('one', 'two')

a <- array(c(vector1, vector2), dim = c(3, 3, 2), dimnames = list(row.names, columns.names, matrix.names))

print(a)

# access matrix 1
print(a[,,1])

# access matrix 2
print(a[,,2])

print(a[2, , 2])


# MULTIPLY MATRIX

print(a * a)

print(a[, , 1]* a[, , 1])


# apply function operations across the elements

result <- apply(a, c(1), sum)
print(result)


list1 <- c(3, 4, 5)
list2 <- c(6, 7, 8, 9, 10, 11, 12)

a2 <- array(list(list1, list2), dim=c(3,3,2), dimnames = list(row.names, columns.names, matrix.names))

print(a2)
