## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y){  #set the value of the matrix
                x <<- y
                inv <<- NULL
}
        get <- function() x   #get the value of matrix 
        set_inverse <- function(inverse) inv <<- inverse    #set the value of the inverse_matrix
        get_inverse <- function() inv                       #get the value of the inverse_matrix
        list(set = set,
             get = get,
            set_inverse = set_inverse
            get_inverse = get_inverse)


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

        inv <- x$get_inverse()

        if(!is.na(inv)){                                  # first check to see if the inverse matrix has already been conducted
                message("getting cached data")            #if yes, skip the conputation
                return(inv)
}
                                                          #otherwise, executes the computation and sets the inverse matrix in the cache via the set_inverse function                            
        matirx_to_invert <- x$get()
        inv <- solve(matrix_to_invert, ...)
        x$set_inverse(inv)
        inv

        }
