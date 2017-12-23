" : create series of numbers in sequence of given range"

v <- 2:8
cat("numbers 2 to 8 are:", v)


" %in% to check whether given number is in the range: TRUE/FALSE"

cat("out of range", 12 %in% v)

cat("with in range:", 8 %in% v)


"%*% operator used to multiply"

M = matrix( c(2,6,5,1,10,4), nrow = 2,ncol = 3,byrow = TRUE)
print(M)
print(t(M))

print(M %*% t(M))

v = c(2, 3, 4)
t = c(4, 5, 6)
print(v %*% t)