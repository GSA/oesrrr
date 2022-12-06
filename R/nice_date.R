
#' Returns a nice looking date for text
#'
#' @param in_date Any date value
#' @param abbr Boolean whether or not to abbreviate month name
#'
#' @return Text string of the date
#' @export
#'
#' @examples Enter as_date('2021-01-01'), returns "January 1, 2021"
#' @examples Enter as_date('2021-01-01',abbr = TRUE), returns "Jan 1, 2021"
nice_date <- function(in_date, abbr = FALSE)
{
  m_ <- in_date %>% month(label = TRUE, abbr = abbr)
  d_ <- in_date %>% day()
  y_ <- in_date %>% year()

  out <- glue::glue("{m_} {d_}, {y_}")

  return(out)
}
