



#' BarplotAAFreq
#'
#' @description
#' The function takes a string of Aminoacids, splits it by characters and count how many times each character (aa) is present, then it plot the aas distribution in a barplot using ggplot
#' @import ggplot2
#' @import stringr
#' @param AAS String of Aminoacids
#'
#' @return Variable that contains a barplot with the frequence of each of the aminoacids in the given string
#' @export
#'
#'
BarplotAAFreq <- function(AAS){
  # Splits the given AA chain (AAS) into a vector of character containing the different AAS
  # present in the chain
    AA_string_split <- AAS |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()
# Apply the function amino_acid, which counts the frequency of each amino acid  present in AA_string_split
# to the given chain (AAS). Converts the object into a Data Frame for easier handling
  counts <- sapply(AA_string_split, function(amino_acid) stringr::str_count(string = AAS, pattern =  amino_acid)) |>
    as.data.frame()
# Create column counts, that will have the frequency of a particular AA in the chain
  colnames(counts) <- c("Counts")
# Create a column that contains the letter of the AA that is being counted in that row
  counts[["AA"]] <- rownames(counts)
# Creates a barplot, with each of the a
  AAfreq_barplot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = AA, y = Counts, fill = AA)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(AAfreq_barplot)

}
