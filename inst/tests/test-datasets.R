context('All datasets')

test_that("The correct DropOutRates data is included", {
  data(DropOutRates)
  expect_that(digest(DropOutRates), equals("ca2667c6176daa1c21a05eb66d23dbaa"))
})

test_that("The correct AbuseRates data is included", {
  data(AbuseRates)
  expect_that(digest(AbuseRates), equals("1eda094dcea5de1fe160cf55720fae80"))
})
