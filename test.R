a <- 2
b <- a + 2
print(b)

f <- function(x, y = 2){
  browser()
  x <- 4
  x + y
}

f(2)

# Booléens :
(mat <- matrix(sample(c(TRUE, FALSE), 12, replace = TRUE), 3))
typeof(mat)
# Doubles :
mat2 <- mat + 0
typeof(mat2)
# Entiers :
mat3 <- mat + 0L
typeof(mat3)


# exo :

sum_every_n <- function(vec, num){
  dim(vec) <- c(num,length(vec)/num)
  colSums(vec)
}
sum_every_n(1:10, 2)
sum_every_n(2:10,3)

sapply(iris[,sapply(iris,is.numeric)], mean)

mat <- matrix(0, 10, 3); mat[c(1, 5, 8, 12, 16, 17, 19, 23, 24, 29)] <- 1; mat
code <- array(dim = c(2,2,2))
code[2,1,1] <- 0
code[1,2,1] <- 1
code[1,1,2] <- 2
code
mat
code[mat + 1]


# exos 3.4.5 :

# 1
f <- function(ind, K){
  s <- sample(1:K, size = length(ind), replace = TRUE)
  split(x = ind, f = s)
}
f(1:40,3)
g <- function(ind,K){
  r <- rep_len(1:K, length(ind))
  s <- sample(r)
  split(x = ind, f = s)
}
g(1:40,3)

# 2
my_mtcars <- mtcars[c("mpg", "hp")]
my_mtcars$my_col <- sample(c("mpg", "hp"), size = nrow(my_mtcars), 
                           replace = TRUE)
ind <- cbind(seq_len(nrow(my_mtcars)), match(my_mtcars$my_col, colnames(my_mtcars)))
my_mtcars$my_val <- my_mtcars[ind]
my_mtcars

# 3
df <- data.frame(
  id1 = c("a", "f", "a"),
  id2 = c("b", "e", "e"), 
  id3 = c("c", "d", "f"),
  inter = c(7.343, 2.454, 3.234),
  stringsAsFactors = FALSE
)
df
(code <- setNames(1:6, letters[1:6]))
df[1:3] <- code[unlist(df[1:3])]

