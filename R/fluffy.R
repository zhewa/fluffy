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
