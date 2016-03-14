## In this script, two functions have been defined to cache the inverse of a matrix.
## --------------------------------------------------------------------------------------------

## This first function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  					m <- NULL
					set <- function(y){
  							x <<- y
  							m <<- NULL
			 			 }
			 		get <- function() x
					setmatrix <- function(solve) m <<- solve
					getmatrix <- function() m
					list(set=set, get=get,
  					     setmatrix=setmatrix,
   					     getmatrix=getmatrix)
			 }


## This second function creates the inverse of the matrix object created in the first function

cacheSolve <- function(x, ...) {
					m <- x$getmatrix()
    					if(!is.null(m)){
      					message("getting cached data")
					      return(m)
    					}
					matrix <- x$get()
				      m <- solve(matrix, ...)
    					x$setmatrix(m)
					m	
        	  }

