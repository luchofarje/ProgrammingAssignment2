## Put comments here that give an overall description of what your
## functions do
## Lucho

## Write a short comment describing this function
## This is an object function with 4 methods to manipulate matrix
makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  
  get <- function() x
  
  setsolve <- function(solve) s <<- solve
  
  getsolve <- function() s
  
  list(set = set, 
       get = get, 
       setsolve = setsolve, 
       getsolve = getsolve)
}


## Write a short comment describing this function
## Solve matrix operations and return an inversed matrix of 'x'
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s <- x$getsolve()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
}