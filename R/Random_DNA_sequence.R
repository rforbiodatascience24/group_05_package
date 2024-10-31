#' Random DNA sequence
#'
#' @param seq_length
#'
#' @return
#'
#' @export
#'
#'
Random_DNA_seq <- function(seq_length){
  nucleotides <- sample(c("A", "T", "G", "C"), size = seq_length, replace = TRUE)
  DNA_seq <- paste0(nucleotides, collapse = "")
  return(DNA_seq)
}

