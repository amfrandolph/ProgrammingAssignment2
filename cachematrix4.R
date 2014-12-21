## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## x is input copy of matrix
## xg globally cached copy of the Matrix
## y local inverse of the matrix
## yg is the global cached version of the Matrix
## yr is the returned value of the inverse Matrix


## cacheSolve
matt <- matrix(1:4,2)
x <- matt

makeCacheMatrix <- function(x = matrix()) {
        yr <- NULL
        yr <- cacheSolve(x)       
        Set <- function(y) {
                xg <<- x
                yg <<- yr
        }  
        get <- function() x   ## read orignal Value
        setinverse <- function(yr) yg <<- yr
        getinverse <- function(yr)
        list(set=set, get=get,
             setinverse = setinverse,
             getinverse = getinverse)
}     
## Write a short comment describing this function

cacheSolve <- function (x) {
        ## Return a matrix that is the inverse of 'y'
        
        if(x != xg) {   
                print("Getting Cached Matrix")
                yr <- yg
                yr
                }
        Else         
                y <- solve(x)
                yr <- y
                yr            
}         
        