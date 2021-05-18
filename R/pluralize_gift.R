#' Takes a noun and makes it plural
#'
#' @param gift A string or vector of strings
#'
#' @return A string or vector of strings with the pluralized words
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
pluralize_gift <- function(gift){

  newGift <- gift
  newGift <- newGift %>%
    str_replace("y$", "ies") %>%
    str_replace("oo", "ee") %>%
    str_replace(newGift, glue("{newGift}s"))
  return(newGift)
}
