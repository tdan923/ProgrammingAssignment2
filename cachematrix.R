## The two functions are:
## (1) makeCacheMatrix
## (2) cacheSolve

## makeCacheMatrix function takes matrix input and stores the matrix in the matrix cache,
## sets and gets the mean value of the matrix and lists as output.

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	setMat <- function(newMat) {
		x <<- newMat
		m <<- NULL
	}
	getMat <- function() {
		x
	}
	setMean <- function(mean) {
		m <<- mean
	}
	getMean <- function() {
		m
	}
	list(setMat = setMat, getMat = getMat, setMean = setMean, getMean = getMean)
}


## cacheSolve function returns a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
	invMat <- x$getInv()
	mat <- x$get()
	invMat <- solve(mat)
	x$setInv(invMat)
	invMat
}
