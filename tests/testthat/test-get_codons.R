test_that("the codon getting process is working right", {
  expect_equal(get_codons("ATGCGTACGTTAGCCGTAGCTTGAATGCTAGC", start = 3),
               c("GCG", "TAC", "GTT", "AGC", "CGT", "AGC", "TTG", "AAT", "GCT", "AGC"))
})
