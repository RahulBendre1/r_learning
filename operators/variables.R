"variable assignment"

var.1 = c(1, 2, 3)

var.2 <- c(1, 2, 3)

c(1, 2, 3) -> hellow

cat("equal operator: ", var.1, "\n")

cat("left operator: ", var.2, "\n")

cat("right operator: ", hellow, "\n")

"data types of variables"

var_x <- "hellow"
var_y <- 22
var_z <- 33L
var_a <- c(1, 3)
var_b <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2, byrow = TRUE)
var_c <- array(c('red', 'blue', 'green'), dim=c(3, 3, 2))


cat("class of var_x is: ", class(var_x), "\n")
cat("class of var_y is: ", class(var_y), "\n")
cat("class of var_z is: ", class(var_z), "\n")
cat("class of var_a is: ", class(var_a), "\n")
cat("class of var_b is: ", class(var_b), "\n")
cat("class of var_c is: ", class(var_c), "\n")

cat("list all variables", ls())

cat("pattern matching variables listing are:", ls(pattern="var_"))

cat("hidden variables which are starting with dot are:", ls(all.names = TRUE))

"removing varialbes:"
rm(list = ls())
cat("all varialbes after removing: ", ls())
