#' Places a copy of the word template into a project folder called templates and DHS logo and ADA into images
#'
#' @return True or false
#' @export
#' @import here
#'
#' @examples
word_template_to_project <- function()
{
  word_template_folder <-
    system.file("word-template",package = "oesrrr")

  word_template_file <-
    list.files(word_template_folder, full.names = TRUE)

  dir.create(path = here::here('templates'))

  file.copy(word_template_file,here::here('templates'))

  image_folder <-
    system.file("images",package = "eaesdrrr")

  image_file <-
    list.files(image_folder, full.names = TRUE)

  dir.create(path = here::here('images'))

  file.copy(image_file,here::here('images'))

}
