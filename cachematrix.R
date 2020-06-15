## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  j <- NULL
  set <- function(y){
    x <- y
    j <- NULL
  }
  get <- function()x
  set_inverse <- function(inverse) j <<- inverse
  get_Inverse <- function() j 
  list(set = set, get = get, 
       set_inverse = set_inverse, 
       get_inverse = get_Inverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  j <- x$get_inverse()
  if(!is.null(j)){
    message("retrieving cached data")
    return(j)
  }
  matrix <- x$get()
  j <- solve(matrix,...)
  x$set_inverse(j)
  j
}
