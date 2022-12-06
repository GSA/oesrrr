#' Calculates age
#'
#' @param dob A date object, generally the date of birth
#' @param age.day A date object, the date for which you want the age
#' @param units Time unit, see unites from lubridate::duration
#' @param floor Logical, returns integer
#'
#' @return Age of observation in defined units, years in default
#' @export
#' @import lubridate
#' @import tidyverse
#' @import here
#' @import ggplot2
#'
#' @examples
age <- function(dob, age.day = today(), units = "years", floor = TRUE) {
  calc.age = interval(dob, age.day) / duration(num = 1, units = units)
  if (floor) return(as.integer(floor(calc.age)))
  return(calc.age)
}
