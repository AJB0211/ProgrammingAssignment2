

## This looks like a "class"
## Quick search says this is how you do classes in R
## this is atrocious, I hate R now

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  
  get <- function() x
  
  setInv <- function(new_inv) inv <<- new_inv
  
  getInv <- function() inv
  
  list(set = set, get = get, setInverse = setInv, getInverse = getInv)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inVal <- x$getInverse()
  if (!is.null((inVal))) {
    message("retrieving cached member")
    return(inVal)
  }
  myMat <- x$get()
  inVal <- solve(myMat,...)
  x$setInverse(inVal)
  return(inVal)
}




