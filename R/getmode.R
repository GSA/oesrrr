#' Calculate the mode of a vector
#'
#' @param v The vector overwhich to calcualt the mode.
#'
#' @return The mode of the vector.
#' @export
#'
#' @examples
getmode <- function(v) {
  
  uniqv <- unique(v)
  
  uniqv[which.max(tabulate(match(v, uniqv)))]
  
}