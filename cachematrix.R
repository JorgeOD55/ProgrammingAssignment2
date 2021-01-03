## The fisrt function it is a class of a matrix who has a method who inverts a matrix
##The second function is a function who cache the inverted matrix if it is not, if it is just call cache to show
##the results


## A class of a matrix with a method for invert matrix

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    set <- function(y){
      x<<- y
      inverse <<- NULL
      
    }
    get <- function(){
      x
    } 
    setinverse <- function(solve) {
      inverse <<- solve
    }
    getinverse <- function() {
      inverse
    }
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  }




## A function who cache an inverted matrix if it is not, if it is just call the cache to show the matrix inverted

cacheSolve <- function(x, ...) {
  inverse <- x$getinverse()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data,...)
  x$setinverse(inverse)
  inverse
        ## Return a matrix that is the inverse of 'x'
}
