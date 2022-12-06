#' Creates a standard folder structure for project
#'
#' @return Nothing if the folders do not exist and warning if they exist
#' @export
#'
#' @examples
set_up_folders <- function()
{
  dir.create(here::here('data'))
  dir.create(here::here('scripts'))
  dir.create(here::here('output'))
  dir.create(here::here('templates'))
  dir.create(here::here('images'))
}
