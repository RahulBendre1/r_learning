"paste function"

a <- "Hai"
b <- "how"
c <- "are you ?"
v <- c('hellow', 'red', 'velvet')

cat(paste(a, b, c), "\n")
cat(paste(a, b, c, sep = "-", collapse = '|'), "\n")
cat(paste(a, b, c, v, sep = "-", collapse = '|'), "\n")


result <- format(23.123456780, digits = 4)
cat(result, "\n")

result <- format(c(6, 13.14521), scientific = TRUE)
cat(result, "\n")

result <- format(c(6, 13.14521), nsmall = 8)
cat(result, "\n")

result <- format(6, nsmall = 6)
cat(result, "\n")
cat(class(result), "\n")


result <- format(13.7, width = 7)
cat(result, "\n")

result <- format("Hellow", width = 80, justify = 'l')
cat(result, "\n")

result <- format("Hellow", width = 80, justify = 'r')
cat(result, "\n")

result <- format("Hellow", width = 80, justify = 'c')
cat(result, "\n")

result <- nchar("count no.of characters")
cat(result)

result <- toupper("Changing to Upper")
cat(result)

result <- tolower("Changing to Lower")
cat(result)

result <- substring("hello master", 3, 7)
cat(result)
