context('All datasets')

test_that("The correct DropOutRates data is included", {
  data(DropOutRates)
  expect_that(digest(DropOutRates), equals("ca2667c6176daa1c21a05eb66d23dbaa"))
})

test_that("The correct AbuseRates data is included", {
  data(AbuseRates)
  expect_that(digest(AbuseRates), equals("1eda094dcea5de1fe160cf55720fae80"))
})

test_that("The correct DepressionAbuseRates data is included", {
  data(DepressionAbuseRates)
  expect_that(digest(DepressionAbuseRates), equals("01e481864995c27d933d156988e09f30"))
})

test_that("The correct DepressionNoAbuseRates data is included", {
  data(DepressionNoAbuseRates)
  expect_that(digest(DepressionNoAbuseRates), equals("ec4fa254d7640772e3912db30c830e98"))
})
