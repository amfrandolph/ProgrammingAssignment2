## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function test to see if a matrix exists if not, one is cached globally
matt <- matrix(1:4,2)

if (x != null) {        ## Matrix exists
        
        makeCacheMatrix <- function(x = matrix()) {
                m <- NULL
                set <- function(y) {
                        x <<- y
                        m <<- NULL
                }
Else               ## Matrix does not exist make it and cache it 
                get <- function() x
                setmatrix <- function(mean) m <<- mean
                ## getmean <- function() m
                list(set = set, get = get,
                     setmean = setmean,
                     getmean = getmean)
        }
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        mi <- solve(x)
        return(mi)
}
