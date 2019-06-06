#' @title Make fluffy checksum
#' @description Make the checksum of stuff fluffy
#' @param x An arbitrary \R object which will then be passed to the
#'  \code{\link{digest}} function.
#' @param algo The algorithms to be used; currently available choices are
#'  \code{md5}, which is also the default, \code{sha1}, \code{crc32},
#'  \code{sha256}, \code{sha512}, \code{xxhash32}, \code{xxhash64},
#'  \code{murmur32} and \code{spookyhash}.
#' @details The fuction calculates the checksum of the input \code{x} and
#'  surrounds the checksum with \code{~\{\{} and \code{\{\{~}.
#' @return A fluffy checksum of \code{x}.
#' @seealso \code{\link{paste}} \code{\link{digest}}
#' @examples
#' fluffyChecksum("a")
#' fluffyChecksum(123, algo = "sha1")
#' fluffyChecksum(matrix(rep(1, 9), ncol = 3, nrow = 3))
#' @author Zhe Wang
#' @importFrom digest digest
#' @export
fluffyChecksum <- function(x, algo = "md5") {
    fluffyChecksum <- digest::digest(x, algo = algo)
    fluffyChecksum <- paste0("~{{", fluffyChecksum, "}}~")
    return(fluffyChecksum)
}


# Excercises
# Fill in roxygen2 documentations and complete the codes
# Don't forget to write the corresponding unit tests!
# Commit your changes and make a pull request


# average
# This function returns the mathmatical mean of input vector x
avg <- function(x) {
    # write your code here
    res <- mean(x)
    return(res)
}


# strip trailing "~"
# This function strips the trailing "~" of input character x
stripTilde <- function(x) {
    # write your code here
    res <- substr(x, 1, nchar(x) - 1)
    return(res)
}


# Excercises
# Fill in roxygen2 documentations and complete the codes
# Don't forget to write the corresponding unit tests!
# Commit your changes and make a pull request


# times two
# This function returns the input x multiplied by two
timesTwo <- function(x) {
    # write your code here
    res <- x * 2
    return(res)
}


# random number
# This function returns a random integer between a and b
randomNumber <- function(a, b) {
    # write your code here
    res <- runif(1, a, b)
    return(res)
}


# factorial
# This function returns the factorial of x
# Do not use the factorial built-in R function!
fact <- function(x) {
    # write your code here
    num <- 1
    if (x <= 1){
        res <- 1
    } else {
        for (i in 1:x){
            num <- num * i
        }
        res <- num
    }
    return(res)
}


# Bonus questions:

# factorial (recursion)
# This function returns the factorial of x using recursion
# Do not use the factorial built-in R function!
factRecursion <- function(x) {
    # write your code here
    if (x <= 1){
        res <- 1
    } else {
        res <- (x* factRecursion(x-1))
    }
    return(res)
}


# factorial (memoization)
# This function returns the factorial of x using memoization
# Do not use the factorial built-in R function!
factMemoiz <- function(x) {
    # write your code here
    if (x <= 1){
        return(1)
    } else {
        return(factMemoiz(x - 1) * x)
    }
}
