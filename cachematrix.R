## following function set the value of the vector
## get the value of the vector
## set the value of the mean
## get the value of the mean


makeCacheMatrix <- function(x = matrix()) {
 
  mat <- NULL
  setMat <- function(m){
    x <<- m
    mat <<- null
    
  }
    getMat <- function() x
    setMatInverse <- function(solve) mat <<- solve
    getMatInverse <- function() mat
    list(setMat = setMat, getMat = getMat, setMatInverse = setMatInverse, getMatInverse = getMatInverse)
    
  
}


## The following function returns the inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    mat <- x$getMatInverse()
    if(!is.null(mat)){
      print("getting cached data")
      return(mat)
    }
    else {
    data <- x$getMat()
    mat <- solve(data, ...)
    x$setMatInverse
    mat
    }
}
