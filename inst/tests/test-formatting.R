context('All formatting functions')

test_that("DropOutRates is formatted correctly", {
  data(DropOutRates)
  expect_that(digest(format_DropOutRates(DropOutRates)), equals("4447fbc7fc3a1926e46f31afd57a8705"))
})