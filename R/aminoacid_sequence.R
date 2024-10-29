#' Title aminoacid_sequence
#'
#' @param codons sequence of codons that want to be converted into amino acids
#'
#' @return amino acid sequence
#' @export
#'
#' @examples
#' # example code
#'
#' codons_example <-  c("AUG", "UUU", "UUA", "UGG", "UCU")
#' aminoacid_sequence(codons_example)
#'
aminoacid_sequence <- function(codons){
  aa_seq <- paste0(codon_table[codons], collapse = "")
  return(aa_seq)
}
