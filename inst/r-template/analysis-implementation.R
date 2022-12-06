
# Start timer -------------------------------------------------------------

tictoc::tic()

# Libraries ---------------------------------------------------------------

library(tidyverse)
library(lubridate)
library(purrr)

# Parameters --------------------------------------------------------------

project <- 'project name'
plot_type <-  'plotly'
in_file_name <- "data file name"
# could select from 'highcharter', 'ggplot2', 'plotly'

# Determine file name -----------------------------------------------------

file_name <- glue::glue("{str_replace_all(str_to_lower(project),' ','-')}-{today()}.html")

file_name

# Render data extraction --------------------------------------------------

rmarkdown::render(input = here::here("scripts",
                                     "analysis-implementation.Rmd"),
                  params = list(
                    project = project,
                    plot_type = plot_type,
                    in_file_name = in_file_name
                  ),
                  output_file =
                    here::here("output",
                               'html',
                               file_name))


# End timer ---------------------------------------------------------------

tictoc::toc()

