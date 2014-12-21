## Put comments here that give an overall description of what your
## functions do
##  makeCacheMatrix defines four functions that can set and get super assigned matracies

##  VERIABLE DEFINITIONS
## x is input copy of matrix
## xg globally cached copy of the Matrix
## y local inverse of the matrix
## yg is the global cached version of the Matrix
## yr is the returned value of the inverse Matrix

matt <- matrix(1:4,2)  # save practice matrix

makeCacheMatrix <- function(x = matrix()) {
        yr <- NULL    # resets invers return value
        set <- function(y) {      # function to super assign original matrix and inverse
                xg <<- x
                yg <<- NULL      
        }  
        get <- function() x   # read orignal Value
        setinverse <- function(yr) yg <<- yr  # funtion to super assign inverse matrix
        getinverse <- function() yr     # funtion to retrieve super assigned matrix
        list(set=set, get=get,   #  Tells wher to find functions
             setinverse = setinverse,
             getinverse = getinverse)
}     
## Write a short comment describing this function
##  This fuction looks to see if the correct inverse matrix has already been
##  defined, then either reuses previous inverse or if needed calculate the
##  using the solve function.   Either way it returns the inverse matrix as yr.
cacheSolve <- function (x,...) {
        # Return a matrix that is the inverse of 'y'
        yr <- x$getinverse()
        if(!is.null(yr)) {   
                message("Getting Cached Matrix")
                return(yr)
        }
        data <- x$get()         # retrieve orignial matrix value
        yr <- solve(data,...)  # Calculates the inverse
        x$setinverse(yr)         # show value of stored inverse
        yr                      # prints the value of the inverse
}              