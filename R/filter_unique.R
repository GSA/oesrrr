#' Filters out rows with NA values for specific columns
#'
#' @param in_data The dataframe you wish to remove rows from.
#' @param ... Column(s) that determine whether a row should be removed.
#'
#' @return The dataframe with rows removed that had NAs in specified columns.
#' @export
#'
#' @examples
filter_unique <- function(in_data, ...)
{
  in_data %>%
    filter(!(if_any(c(...),~is.na(.))))
}
