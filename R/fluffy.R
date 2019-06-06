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
    fluffyChecksum <- paste0("~{{", fluffyChecksum ,"}}~")
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
    res <- NULL
    return(res)
}


# strip trailing "~"
# This function strips the trailing "~" of input character x
randomNumber <- function(x) {
    # write your code here
    res <- NULL
    return(res)
}
