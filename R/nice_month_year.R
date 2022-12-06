
#' Returns a nice looking month and year for text
#'
#' @param in_date Any date value
#'
#' @return Text string of the month and year
#' @export
#' @import lubridate
#' @import tidyverse
#' @import glue
#'
#' @examples Enter as_date('2021-01-01'), returns "January 2021"
nice_month_year <- function(in_date)
{
  m_ <- in_date %>% month(label = TRUE, abbr = FALSE)
  y_ <- in_date %>% year()

  out <- glue::glue("{m_} {y_}")

  return(out)
}
