% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_codons.R
\name{get_codons}
\alias{get_codons}
\title{get_codons}
\usage{
get_codons(dna, start = 1)
}
\arguments{
\item{dna}{the dna sequence to divide in codons. It can also be rna.}

\item{start}{the position of the sequence where the first codon should start}
}
\value{
list of codons (three character strings) yor initial list were divided in
}
\description{
This amazing super complex function divide your DNA sequence in a list of codons
}
\examples{
get_codons("ATGCGTACTCTGTC")

}
