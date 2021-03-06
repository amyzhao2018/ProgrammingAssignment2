## The overall purpose is to cache the inverse of a matrix 
## which consists two steps.

## The first function makeCacheMatrix creates a matrix object 
## that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function (y) {
    x <<- y
    m <<- NULL
  }
  get <-function() x
  setmatrix <- function(solve) m<<- solve
  getmatrix <- function() m
  list (set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)

}


## The second function cacheSolve computes the inverse of the matrix 
## returned by makeCacheMatrix.

cacheSolve <- function(x, ...) {
  m <- x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setmatrix(m)
  m
  ## Return a matrix that is the inverse of 'x'     
  
}
