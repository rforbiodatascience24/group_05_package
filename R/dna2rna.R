#' DNA Transcribing
#'
#' @param dna_seq A DNA sequence
#'
#' @return
#' @export
#'
#'
dna2rna <- function(dna_seq){
  rna_seq <- gsub("T", "U", dna_seq)
  return(rna_seq)
}
