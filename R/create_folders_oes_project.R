#' Creates folders for an OES project
#'
#' @return
#' @export
#' @import here
#'
#' @examples
create_folders_oes_project <- function()
{
  dir.create(here::here('01. Initiation'))
  dir.create(here::here('02. Design'))
  dir.create(here::here('03. Data Collection'))
  dir.create(here::here('04. Analysis'))
  dir.create(here::here('05. Reporting'))
  dir.create(here::here('04. Analysis','data'))
  dir.create(here::here('04. Analysis','scripts'))
  dir.create(here::here('04. Analysis','output'))
  dir.create(here::here('04. Analysis','documents'))
  dir.create(here::here('04. Analysis','images'))
  dir.create(here::here('04. Analysis','templates'))
  dir.create(here::here('04. Analysis','output','html'))
  dir.create(here::here('04. Analysis','output','pptx'))
  dir.create(here::here('04. Analysis','output','docx'))
  dir.create(here::here('04. Analysis','output','pdf'))
  dir.create(here::here('04. Analysis','output','xlsx'))
  dir.create(here::here('04. Analysis','output','rdata'))
}
