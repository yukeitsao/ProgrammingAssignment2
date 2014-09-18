## Put comments here that give an overall description of what your
## functions do
## compute the Inverse of a Matrix and caching it, then if we compute it again,we just getting the cached data.
## Write a short comment describing this function
## In the Function makeCacheMatrix(),it make a 'special matrix',it have three function for the second function cacheSolve() to get or set 
## the inverted matrix from cache then compute the inverse of matrix.
makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  get <- function() x
  setinverse <- function(x) s <<- x
  getinverse <- function() s
  list(set = set, 
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
## To compute the inverse of matrix if it already cached,it return the reasult in the cache.
cacheSolve <- function(x, ...) {
  s <- x$getinverse()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- L$get()
  s <- solve(data, ...)
  x$setinverse(s)
  s
  ## Return a matrix that is the inverse of 'x'
}
