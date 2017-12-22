"Comments adding"

myString <- 'hey boss'
if(FALSE) {
  "this is demo comment"
}

myString <- "hellow murali"
print(myString)


"Data types"

v <- TRUE
print(class(v))

"vectors"

t <- c('Red', 'Yellow', 'trigger')
print(t)


"LISTS"
different_list <- list(c('hello', 'hai'), 23.1, sin)
print(different_list)

vector_with_list <- c(list('hellow', 'hey'), 2, 4L)
print(vector_with_list)

"Matrix"
vector <- c('a', 'b', 'c', 'c', 'b', 'a')
by_col_matrix = matrix(vector, nrow = 2, ncol = 3, byrow = FALSE)
by_row_matrix <- matrix(vector, nrow = 2, ncol = 3, byrow = TRUE)

"
       result
    [,1] [,2] [,3]
[1,] a    c    b 
[2,] b    c    a

"
print(by_col_matrix)


"
result
[,1] [,2] [,3]
[1,] a    b    c
[2,] c    b    a

"
print(by_row_matrix)



"Arrays"

colors <- array(c('green', 'red'), dim = c(3, 3, 2))
rgb <- array(c('red', 'green', 'blue'), dim = c(4, 4, 3))

"
, , 1

[,1]    [,2]    [,3]    [,4]   
[1,] 'red'   'green' 'blue'  'red'  
[2,] 'green' 'blue'  'red'   'green'
[3,] 'blue'  'red'   'green' 'blue' 
[4,] 'red'   'green' 'blue'  'red'  

, , 2

[,1]    [,2]    [,3]    [,4]   
[1,] 'green' 'blue'  'red'   'green'
[2,] 'blue'  'red'   'green' 'blue' 
[3,] 'red'   'green' 'blue'  'red'  
[4,] 'green' 'blue'  'red'   'green'

, , 3

[,1]    [,2]    [,3]    [,4]   
[1,] 'blue'  'red'   'green' 'blue' 
[2,] 'red'   'green' 'blue'  'red'  
[3,] 'green' 'blue'  'red'   'green'
[4,] 'blue'  'red'   'green' 'blue' 
"
print(rgb)
"
, , 1

[,1]    [,2]    [,3]   
[1,] 'green' 'red'   'green'
[2,] 'red'   'green' 'red'  
[3,] 'green' 'red'   'green'

, , 2

[,1]    [,2]    [,3]   
[1,] 'red'   'green' 'red'  
[2,] 'green' 'red'   'green'
[3,] 'red'   'green' 'red'  
"
print(colors)


"factors"

"it's R objects which are created using vectors except that factors will store distinct values of vectors"
apple_colors <- c('orange', 'red', 'yellow', 'blue', 'red', 'oranged', 'ping')

factor_appels <- factor(apple_colors)
print(factor_appels)
print(nlevels(factor_appels))


"Data frames"

"It's a tabluar representation of data objects"

BMI <- data.frame(
  name = c('Bob', 'Alia', 'Tom'),
  Age = c(25, 35, 28),
  Weight = c(101, 90, 200)
)

print (BMI)

