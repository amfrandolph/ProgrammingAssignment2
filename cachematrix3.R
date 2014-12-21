## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## x is the globally cached copy of the Matrix
## y is the in function copy of the Matrix
## mi is a martix that is the inverse of Y


## This function test to see if a matrix exists if not, one is cached globally
matt <- matrix(1:4,2)
x <- matt

(x) <- function(x) {
        if(!is.null(x)) {           
                makeCacheMatrix <- function(x = matrix()) {
                        m <- NULL
                        set <- function(y) {
                                x <<- y
                                m <<- NULL
                                print("Getting Cached Matrix")
                        }
        Else  {        
                        get <- function() x
                        setmatrix <- function(mean) m <<- mean
                        ## getmean <- function() m
                        list(set = set, get = get,
                                setmean = setmean,
                                getmean = getmean)
                        }
        }
}
## Write a short comment describing this function

cacheSolve <- function(y, ...) {
        ## Return a matrix that is the inverse of 'y'
        mi <- solve(y)
        return(mi)
}
