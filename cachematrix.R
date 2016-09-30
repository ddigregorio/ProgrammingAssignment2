## Put comments here that give an overall description of what your
## functions do

## to use (if working directory is not set
##    source("C:\\Users\\e840921\\Documents\\coursera\\R-Programming\\ProgrammingAssignment2\\cachematrix.r")
## to use (if working directory is set)
##    source("cachematrix.r")

## create a 3x3 matrix with set values
## qq <- matrix((1:9),nrow=3, ncol=3)  ## unsolvable matrix
## qq <- matrix(rnorm(9),nrow=3, ncol=3) ## solvable matrix creation


## Write a short comment describing this function
## the  <<- is a global assignment operator, meaning that the variable can be assigned in a function yet has a scope in 
## the parent environment, 
## This function returns a list of other functions and inverts a matrix 
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(solve) m <<-solve
  getinv <- function() m
  list(set =set, get = get, setinv = setinv, getinv=getinv)
}


## Write a short comment describing this function
## This function looks to see if an inverse matrix has already been computed as a result from the MakeCacheMatrix()
## if so that invers matrix is returned, 
## if not this function computes the matrix and stores it in the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getinv()
        if(!is.null(m)){
              message("getting cached data")
              return(m)
        }
        data <-x$get()
        m <-solve(data, ...)
        x$setinv(m)
        m
}










