load_ASD_data <- function() {
  ASD <- read.csv('data/best_record_NDAR.csv')
  ASD <- ASD %>%
    filter(Produced == TRUE)
  ASD$group <- "ASD"
  return(ASD)
}

load_TD_data <- function() {
  gestures <- read.csv("data/words_and_gestures_lemmatized.csv")
  sentences <- read.csv("data/words_and_sentences_lemmatized.csv")
  gestures <- gestures %>%
    select("subjectkey", "lemma") %>%
    arrange("subjectkey")
  sentences <- sentences %>%
    select("subjectkey", "lemma") %>%
    arrange("subjectkey")
  TD <- rbind(words_gestures, words_sentences)
  return(TD)
}















