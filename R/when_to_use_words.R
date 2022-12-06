#' Converts number into text
#'
#' @param in_number Number to transform into text
#' @param sentence_begin Logical for whether this is the start of a sentence
#'
#' @return String of the English word or number for text
#' @export
#'
#' @examples
when_to_use_words <- function(in_number, sentence_begin = FALSE)
{
  if(in_number > 10)
  {
    out <- scales::comma(in_number)
  }

  if(in_number < 11)
  {
    out <- words(in_number)
  }

  if(sentence_begin)
  {
    out <- words(in_number) %>% str_to_sentence()
  }

  return(out)
}
