context('All datasets')

test_that("The correct DropOutRates data is included", {
  data(DropOutRates)
  expect_that(digest(DropOutRates), equals("ca2667c6176daa1c21a05eb66d23dbaa"))
})

test_that("The correct AbuseRates data is included", {
  data(AbuseRates)
  expect_that(digest(AbuseRates), equals("1eda094dcea5de1fe160cf55720fae80"))
})

test_that("The correct AbusedDepressionRates data is included", {
  data(AbusedDepressionRates)
  expect_that(digest(AbusedDepressionRates), equals("01e481864995c27d933d156988e09f30"))
})

test_that("The correct NotAbusedDepressionRates data is included", {
  data(NotAbusedDepressionRates)
  expect_that(digest(NotAbusedDepressionRates), equals("ec4fa254d7640772e3912db30c830e98"))
})

test_that("The correct AbusedDebutRates data is included", {
  data(AbusedDebutRates)
  expect_that(digest(AbusedDebutRates), equals("b5c7c51cf2c2b7b1779bfb0b7a9a9b8e"))
})

test_that("The correct NotAbusedDebutRates data is included", {
  data(NotAbusedDebutRates)
  expect_that(digest(NotAbusedDebutRates), equals("30e0f12cd3d3421e4019b4d705618cc3"))
})
