#' Integer breaks
#'
#' @param n The number of breaks
#' @param ... Other parameters passed to the scales::pretty function
#'
#' @return Integer breaks for ggplot
#' @export
#'
#' @examples
integer_breaks <- function(n = 5, ...) {
  fxn <- function(x) {
    breaks <- floor(pretty(x, n, ...))
    names(breaks) <- attr(breaks, "labels")
    breaks
  }
  return(fxn)
}
