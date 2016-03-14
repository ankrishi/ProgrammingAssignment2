makeCacheMatrix <- function(x= matrix()) {
        m <- NULL ## consider m as inverse
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) m <<- mean
        getInverse <- function() m
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}
cacheSolve <- function(x, ...) {
        m <- x$getInverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        mat <- x$get()
        m <- mean(data, ...)
        x$setInverse(m)
        m
}