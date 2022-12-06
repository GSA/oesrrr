#' Places a copy of the data extraction render template into a project folder called scripts
#'
#' @return True or false
#' @export
#'
#' @examples
data_extraction_render_template_to_project <- function()
{
  r_template_folder <-
    system.file("r-template",package = "eaesdrrr")

  r_template_file <-
    list.files(r_template_folder, full.names = TRUE)

  file.copy(r_template_file,here::here('scripts'))

}
