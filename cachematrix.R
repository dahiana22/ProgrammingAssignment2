## 
The makeCacheMatrix and cacheSolve functions are used to create an array that can be cached in reverse, 
thus calculating the inverse of the array and retrieving it from the cache if required.  


This function takes a numeric array as input, so its inverse can be cached.

makeCacheMatrix <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInv <- function(inverse) m <<- inverse
  getInv <- function() m
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}

In this part the previous function "makeCacheMatrix" is taken as input and calculates its inverse, 
but, if this part is already calculated then it is only retrieved from the cache.

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("Retrieving cached data")
    return(m)
  } else {
    message("Computing inverse")
data <- x$get()
m <- solve(data, ...)
x$setInv(m)
m
}
