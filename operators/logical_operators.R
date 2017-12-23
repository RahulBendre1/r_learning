v <- c(3,1,TRUE,2+3i)
t <- c(4,1,FALSE,2+3i)

cat("& gives if both elements are true:", v&t)

v <- c(3,0,TRUE,2+2i)
t <- c(4,0,FALSE,2+3i)

cat("OR operator | :", v|t)

cat("NOT operator ! :", !v)


cat("consider only first element for &&: ", v&&t)
cat("consider only first element for ||: ", v||t)

v <- c(0, 1, 2)
t <- c(1, 2, 3)

cat("consider only first element for &&: ", v&&t)
cat("consider only first element for ||: ", v||t)



"Assignment operators:"

v1 <- c(3,1,TRUE)
v2 <<- c(3,1,TRUE,2+3i)
v3 = c(3,1,TRUE,2+3i)
print(v1)
print(v2)
print(v3)

c(3,1,TRUE,2+3i) -> v1
c(3,1,TRUE,2+3i) ->> v2 
print(v1)
print(v2)

