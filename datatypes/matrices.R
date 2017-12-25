# elements by rom

M <- matrix(c(3:14), nrow=4, ncol=3, byrow = TRUE)

print(M)

MC <- matrix(c(3:14), nrow=4, ncol=3, byrow = FALSE)

print(MC)

row_names <- c('row1', 'row2', 'row3', 'row4')
col_names <- c('col1', 'col2', 'col3')

M_names <- matrix(c(3:14), nrow = 4, ncol = 3, byrow = TRUE, dimnames = list(row_names, col_names))

print(M_names)

# ===> accessing elements for a matrix
print(M_names[1, 2])

print(M_names[,2])

print(M+MC)

print(M-MC)

print(M*MC)

print(M/MC)

