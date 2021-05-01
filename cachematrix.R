## Put comments here that give an overall description of what your
## functions do

## This function will create a special matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        a <- null
        
        set <- function(matrix) {
                m <- matrix
                a <<- null
}
        get <- function() {
                m
}
        setinverse <- function(inverse) {
                i <<- inverse
}
        getInverse <- function() {
                a
}
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
 
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        
        if( !isnull(m) ) {
                message("getting cached data")
                return(m)
}
        data <- x$get()
        m <- solve(data) %*% data
        x$setinverse(m)
        
        m
        
}
