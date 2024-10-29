#' get_codons
#'
#' This amazing super complex function divide your DNA sequence in a list of codons
#'
#' @param dna the dna sequence to divide in codons. It can also be rna.
#' @param start the position of the sequence where the first codon should start
#'
#' @return list of codons (three character strings) yor initial list were divided in
#' @export
#'
#' @examples get_codons("ATGCGTACTCTGTC")
#'
get_codons <- function(dna, start = 1){
  dna_length <- nchar(dna)
  codons <- substring(dna,
                      first = seq(from = start, to = dna_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = dna_length, by = 3))
  return(codons)
}
