"repeat"

v <- c('hellow', 'loop')

t = 1

repeat {
  cat(v, t, "\n")
  t <- t+1
  if (t > 5) {
    break
  }
}

t = 1

while (t <= 5) {
  cat('While loop:', v, t, "\n")
  t <- t+1
}

print(LETTERS)

v <- LETTERS[1:10]
for(i in v) {
  cat("letter is: ", i, "\n")
}

sub_v <- LETTERS[1:3]

for(i in v) {
  if (i %in% sub_v) {
    next
  }
  cat('elment is:', i, "\n")
}