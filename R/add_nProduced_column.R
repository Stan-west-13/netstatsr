add_nProduced_column <- function(list_of_records, x) {
  nProduced <- lapply(list_of_records, length)
  nProduced <- as.data.frame(t(nProduced))
  nProduced$subjectkey <- sort(unique(x$subjectkey))
  names(nProduced) <- c("nProduced", "subjectkey")
  x <- merge(x, nProduced)
  x$group <- "x"
  return(x)
}
