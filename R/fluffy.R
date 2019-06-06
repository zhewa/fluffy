#' @title Make fluffy
#' @description Make stuff fluffy
#' @param x one or more \R objects, to be converted to character vectors.
#' @details The fuction surrounds the input characters \code{x} with
#'  \code{~\{\{} and \code{\{\{~}.
#' @return A fluffy \code{x}.
#' @seealso \code{\link{paste}} \code{\link{paste0}}
#' @examples
#' makeFluffy("a")
#' makeFluffy(123)
#' makeFluffy(matrix(rep(1, 9), ncol = 3, nrow = 3))
#' @author Zhe Wang
#' @export
makeFluffy <- function(x) {
    return(paste0("~{{", x, "}}~"))
}


# Excercises
# Fill in roxygen2 documentations and complete the codes
# Don't forget to write the corresponding unit tests!
# Commit your changes and make a pull request



#' @title Times Two
#' @description multiplie to input number by two
#' @param x, one object for calculation.
#' @details This function returns the input x multiplied by two
#' @return A number \code{x}.
#' @seealso \code{\link{paste}} \code{\link{paste0}}
#' @examples
#' makeFluffy(1)
#' makeFluffy(0)
#' makeFluffy(-0.0001)
#' @author Timo
#' @export
timesTwo <- function(x) {
    # write your code here
    res <- x * 2
    return(res)
}


# random number
# This function returns a random integer between a and b
randomNumber <- function(a, b) {
    # write your code here
    res <- NULL
    return(res)
}


# factorial
# This function returns the factorial of x
# Do not use the factorial built-in R function!
fact <- function(x) {
    # write your code here
    res <- NULL
    return(res)
}


# Bonus questions:

# factorial (recursion)
# This function returns the factorial of x using recursion
# Do not use the factorial built-in R function!
factRecursion <- function(x) {
    # write your code here
    res <- NULL
    return(res)
}


# factorial (memoization)
# This function returns the factorial of x using memoization
# Do not use the factorial built-in R function!
factMemoiz <- function(x) {
    # write your code here
    res <- NULL
    return(res)
}
