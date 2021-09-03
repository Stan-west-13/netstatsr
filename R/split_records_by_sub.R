split_records_by_sub <- function(x) {
  return(list_of_records <- split(x = x$lemma, f = x$subjectkey))
}
