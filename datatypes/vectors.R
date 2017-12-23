v <- 6.6:12.6
print(v)

v <- 3.8:11.4
print(v)

# sequence operator with step 

print(seq(5, 10, by = 0.3))

# non character values will be converted into character 
# 5 and TRUE will be converted into characters
s <- c('apple','red',5,TRUE)
print(s)


# accessing the vector elements

t <- c("Sun","Mon","Tue","Wed","Thurs","Fri","Sat")

# using index
u <- t[c(2, 3, 4)]
print(u)

# using negative index
u <- t[c(-2, -4)]
print(u)

# using TRUE/FALSE boolean values
u <- t[c(TRUE, TRUE, FALSE, FALSE, FALSE, TRUE, TRUE)]
print(u)

# using 1/0 values]
u <- t[c(0,0,0,0,0,0,1)]
print(u)


# vector manipulation

v1 <- c(3,8,4,5,0,11)
v2 <- c(4,11,0,8,1,2)

add.result <- v1 + v2

subtract.result <- v1 - v2

multi.result <- v1 * v2

divi.result <- v1 / v2

cat("addition: ", add.result, "\n")
cat("substraction: ", subtract.result, "\n")
cat("multiplication: ", multi.result, "\n")
cat("division: ", divi.result, "\n")


# element recycling

v1 <- c(1, 2, 3, 4)
v2 <- c(4, 5)

print(v1 * v2)
print(v2)

# sorting 

v <- c(3,8,4,5,0,11, -9, 304)

cat("sorting: ", sort(v))

cat("reverse sort:", sort(v, decreasing = TRUE))

v <- c("blue", "red", "yellow")

cat("sorting:", sort(v), "\n")
cat("reverse sorting:", sort(v, decreasing = TRUE))