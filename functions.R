cat(seq(3, 100))

cat(mean(3, 10))

cat(sum(1, 10))

v <- c(3, 4, 5, 6, 7, 8, 9, 10)
paste(v, collapse = ' || ')


square_number <- function(a) {
  for(i in 1:a) {
    b = i^2
    cat('square of ', i, 'is', b, '\n')
  }
}

square_number(10)

new.function <- function(a,b,c) {
  result <- a * b + c
  print(result)
}

# Call the function by position of arguments.
new.function(5,3,11)

# Call the function by names of the arguments.
new.function(a = 11, b = 5, c = 3)


# ===> default arguments

add_numbers <- function(a = 3, b = 10) {
  t = a + b
  cat (t, "\n")
}

add_numbers()
add_numbers(5, 12)


# Create a function with arguments.
new.function <- function(a, b) {
  print(a^2)
  print(a)
  print(b)
}

# Evaluate the function without supplying one of the arguments.
new.function(6)