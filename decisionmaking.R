x <- 30L

if(is.integer(x)) {
  cat("it's a integer.")
}

v <- c('truth', 'is', 'where')

if('Truth' %in% v) {
  cat('Truth is present')
} else {
  cat('Truth is not present')
}


sequence <- function(a, b) {
  print(a:b)
}

sequence(2, 5)

v <- 3

x <- switch(v, 'first', 'second', sequence(3, 10))

print(x)