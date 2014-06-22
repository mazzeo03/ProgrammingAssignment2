## This pair of functions caches the inverse of a matrix.

## This first function creates a special "matrix" object (which is really a list)
## that can cache its inverse. 

makeCacheMatrix <- function(x = matrix(), m = NULL) {
        get <- x
        getinverse <- m
        l <- list(get = get, getinverse = getinverse)
        l1 <<- l
        print (l1) 
}


## This second function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix above. If the inverse has already been calculated (and the 
## matrix has not changed), then the cachesolve should retrieve the inverse 
## from the cache.

cacheSolve <- function(x, ...) {
        m <- l1$getinverse
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        else {data <- l1$get
              m <- solve(data, ...)
              l1$getinverse <<- m
              m
        }
}
