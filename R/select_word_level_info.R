select_word_level_info <- function(gestures, sentences){
  require(dplyr)
  g <- gestures %>%
    select("subjectkey", "lemma") %>%
    arrange("subjectkey")
  s <- sentences %>%
    select("subjectkey", "lemma") %>%
    arrange("subjectkey")
  return(TD <- rbind(g,s))
}
