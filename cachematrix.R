## Creating a pair of functions to cache the inverse of a matrix

## This function will create a special matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        a <- null
        
        set <- function(matrix) {
                b <- matrix
                a <<- null
}
        get <- function() {
                b
}
        ##set the inverse of the function
        setinverse <- function(inverse) {
                a <<- inverse
}
        getInverse <- function() {
                a
}
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
 
}


## This is to compute the inverse of the matrix returned by makeCacheMatrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        b <- x$getinverse()
        
        if( !isnull(m) ) {
                message("getting cached data")
                return(b)
}
        data <- x$get()
        b <- solve(data) %*% data
        x$setinverse(b)
        
        b
        
}
