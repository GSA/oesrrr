#' Displays data as a datatable and samples if the dataframe is large
#'
#' @param in_data Dataframe to display
#' @param in_max_rows Maximum number of rows
#'
#' @return Datatable with with maximum number of rows
#' @export
#'
#' @examples
datatable_with_sampling <- function(in_data, in_max_rows)
{
  if(nrow(in_data) > in_max_rows)
  {
    print(glue::glue("Big dataframe. Sampling {scales::comma(in_max_rows)} rows. {Sys.time()}"))
    prep_01 <-
      in_data %>%
      sample_n(size = in_max_rows)
  }

  if(nrow(in_data) <= in_max_rows)
  {
    prep_01 <-
      in_data
  }
  prep_01 %>%
    DT::datatable(class = 'cell-border stripe')
}
