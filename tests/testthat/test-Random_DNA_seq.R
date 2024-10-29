library(testthat)
test_that("Random DNA seq works", {
  seq_length = 3
  expect_equal(nchar(Random_DNA_seq(seq_length)), 3)
})

