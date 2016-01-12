<<<<<<< HEAD
# COURSE PROJECT 2
## We are about to write a pair of functions that cache the inverse of a matrix,
## instead of computing it repeatedly.

#1 makeCacheMatrix
## This function creates a special "matrix" object
## that can cache its inverse. We need to:
##   - set the value of the matrix
##   - get the value of the matrix
##   - set the value of the inverse matrix
##   - get the value of the inverse matrix
makeCacheMatrix <- function(x = matrix()) {
  z <- NULL
  set <- function(y) {
    x <<- y
    z <<- NULL
  }
  get <- function() x
  setinverse <- function(inv) z <<- inv
  getinverse <- function() z
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

#2 cacheSolve
## This function calculates the inverse of the special "matrix"
## returned by makeCacheMatrix above. If the inverse has already been calculated
## then the cachesolve should show the inverse from the cache.
cacheSolve <- function(x, ...) {
  ### Verify if the inverse matrix has already been calculated
  z <- x$getinverse()
  if(!is.null(z)) {
    message("getting cached data")
    return(z)
  }
  ### Return the inverse matrix
  m <- x$get()
  z <- solve(m, ...)
  x$setinverse(z)
  z
}
