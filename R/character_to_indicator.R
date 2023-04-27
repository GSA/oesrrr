#' Transforms a character column into indicator columns
#'
#' @param in_data The dataframe with the character column
#' @param in_unique_identifier Unique identifiers of the dataframe. This can except a vector.
#' @param in_variable Character column in the dataframe that needs to be transformed
#' @param in_prefix Prefix of the new indicator columns created
#'
#' @return Dataframe with unique identifier(s) and indicator columns
#' @export
#'
#' @examples
character_to_indicator <- function(in_data,in_unique_identifier,in_variable,in_prefix)
{
  in_data %>%
    select(all_of(in_unique_identifier),{{in_variable}}) %>%
    distinct() %>%
    mutate(ind = 1) %>%
    mutate(across(
      .cols = {{in_variable}},
      .fns = ~case_when(. == "" ~ "missing",
                        {{in_variable}} == "NULL" ~ "missing",
                        TRUE ~ .)
    )) %>%
    pivot_wider(names_from = {{in_variable}},
                values_from = ind) %>%
    rename_with(
      .fn = ~glue::glue("{in_prefix} {.}"),
      .cols = -in_unique_identifier
    ) %>%
    clean_names() %>%
    mutate(
      across(
        .cols = where(is.numeric),
        .fns = ~replace_na(.,0)
      )
    )
}
