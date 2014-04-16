context('All datasets')

test_that("The correct DropOutRates data is included", {
  data(DropOutRates)
  expect_that(digest(DropOutRates), equals("ca2667c6176daa1c21a05eb66d23dbaa"))
})