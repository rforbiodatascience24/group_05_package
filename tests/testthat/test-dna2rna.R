# test-dna2rna.R

test_that("dna2rna converts DNA to RNA correctly", {
  # Test a straightforward case
  expect_equal(dna2rna("ATCG"), "AUCG")

  # Test a sequence with only T's to ensure all are converted
  expect_equal(dna2rna("TTTT"), "UUUU")

  # Test with a mixed sequence
  expect_equal(dna2rna("GATTACA"), "GAUUACA")

  # Test an empty string to check edge case handling
  expect_equal(dna2rna(""), "")
})
