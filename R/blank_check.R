#' Checks if a dataframe has any blanks by variable name
#'
#' @param in_data Dataframe to check.
#' @param in_variable_name Variable name to check.
#'
#' @return A boolean for whether or not there are blank strings in the variable.
#' @export
#'
#' @examples
blank_check <- function(in_data,in_variable_name)
{
  check_01 <-
  in_data %>%
    filter(!!sym(in_variable_name) == "") %>%
  distinct()

out <- nrow(check_01) > 0

return(out)
}
