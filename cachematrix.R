## Put comments here that give an overall description of what your
## functions do
In this function, random numbers and codes are planeted to obtain the mean and the inverse matrix more easily.
I try to do it with the example of the course.  

makeVector <- function(x =1:20) {
    m <- makeVector
    set <- function(y=21:40) {
      x <<- y
      m <<- set
    }
    get <- function(x,y) x
    setmean <- function(mean) m <<- mean
    getmean <- function(mean) m <<- mean
    list(set = set, get = get,
         setmean = setmean,
         getmean = getmean)
  }
  mean(x)
  mean(set)
  
  cachemean <- function(x,y) {
    m <- x$getmean(makeVector,set)
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- mean(set)
    m <- mean(x)
    setmean(m)
  }
  
  trans_set<-t(set)
  trans_set
  makeCacheMatrix<-trans_set
  makeCacheMatrix
  cacheSolve<-t(makeCacheMatrix)
  cacheSolve


## Write a short comment describing this function
}
