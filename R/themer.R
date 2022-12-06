#' Applies common ggplot theme elements to chart
#'
#' @return ggplot object with them elements below:
#' theme(
#' legend.title = element_blank(),
#' legend.position = "right",
#' legend.direction = "vertical",
#' axis.title.x = element_blank(),
#' axis.title.y = element_blank(),
#' panel.background = element_rect(fill = "white"),
#' plot.background = element_rect(fill = "white"),
#' legend.background = element_rect(fill = "white"),
#' strip.background = element_rect(fill = "white"),
#' legend.key = element_rect(fill = "white"),
#' strip.text.y = element_text(angle = 0),
#' plot.title = element_text(hjust = 0.5),
#' plot.subtitle = element_text(hjust = 0.5)
#' )
#' @export
#'
#' @examples
#'
#' cars %>%
#' ggplot(aes(x = speed, y = dis)) %>%
#' geom_line() +
#' themer()
themer <- function()
{
  theme(
    legend.title = element_blank(),
    legend.position = "right",
    legend.direction = "vertical",
    axis.title.x = element_blank(),
    axis.title.y = element_blank(),
    panel.background = element_rect(fill = "white"),
    plot.background = element_rect(fill = "white"),
    legend.background = element_rect(fill = "white"),
    strip.background = element_rect(fill = "white"),
    legend.key = element_rect(fill = "white"),
    strip.text.y = element_text(angle = 0),
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5)
  )
}
