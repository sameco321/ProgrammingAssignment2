## Put comments here that give an overall description of what your
## functions do

## next we will see two functions one of them is makeCacheMatrix she 
## accepts as an argument an unsequenced array to calculate its inverse 
## and caches it The next function is cache Solve this function 
## calculate the inverse of the matrix entered in makeCacheMatrix and 
## check if it is not cached if this stored in cache returns what is 
## cached if this calculator was not used the inverse of the matrix and
## that will be its Outcome.

## Write a short comment describing this function
## Enter a non-sequence array to calculate its inverse and cache it

makeCacheMatrix <- function(x = matrix()) {
        p <- NULL
        set <- function(y) {
                x <<- y
                p <<- NULL
        }
        get <- function() x
        ptsolve <- function(solve) p <<- solve
        orsolve <- function() p
        list(set = set, get = get,
             ptsolve = ptsolve,
             orsolve = orsolve)

}




## Write a short comment describing this function
## Create a vector where you already have makeCacheMatrix running
## It does not matter that you have calculated or have 
## not calculated your inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        p <- x$orsolve()
        if(!is.null(p)) {
                message("es matriz")
                return(p)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$ptsolve(m)
        m
}
