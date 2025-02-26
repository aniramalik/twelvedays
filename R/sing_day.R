#' Produces the string for one day of the song.
#'
#' @param dataset A data frame containing information about gifts
#' @param line The number of the line for the day you want to sing about
#' @param phrase_col The variable name for the column in the dataset that
#' contains the gift phrases
#'
#' @return A string singing the line of the song with all gifts for the given day.
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
sing_day <- function(dataset, days, line, phrase_col){

  phrases <- dataset %>% 
    pull({{phrase_col}})
  
  days <- dataset %>% 
    pull({{days}})
  
  day <- days[line]

  phrases <- phrases[line:1]
  newPhrase <- glue_collapse(map(phrases, paste), sep = "\n")
  song <- glue("On the {day} day of Christmas, my true love sent to me, {newPhrase}.")

  return(song)
}
