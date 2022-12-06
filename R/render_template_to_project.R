#' Places a copy of the render template into a project folder called scripts
#'
#' @return True or false
#' @export
#' @import here
#'
#' @examples
render_template_to_project <- function()
{
  r_template_folder <-
    system.file("r-template",package = "oesrrr")

  r_template_file <-
    list.files(r_template_folder, full.names = TRUE)

  file.copy(r_template_file,here::here('scripts'))

}
