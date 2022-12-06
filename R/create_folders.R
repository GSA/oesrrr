#' Creates folders generally used in a project
#'
#' @return
#' @export
#'
#' @examples
create_folders <- function()
{
  dir.create(here::here('data'))
  dir.create(here::here('scripts'))
  dir.create(here::here('output'))
  dir.create(here::here('documents'))
  dir.create(here::here('images'))
  dir.create(here::here('templates'))
  dir.create(here::here('output','html'))
  dir.create(here::here('output','pptx'))
  dir.create(here::here('output','docx'))
  dir.create(here::here('output','pdf'))
  dir.create(here::here('output','xlsx'))
  dir.create(here::here('output','rdata'))
}
