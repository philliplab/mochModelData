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

test_that("The correct NotAbusedCondomUsageRates data is included", {
  data(NotAbusedCondomUsageRates)
  expect_that(digest(NotAbusedCondomUsageRates), equals("27e9f8e694b771e5b4ce060d1a45a5e3"))
})

test_that("The correct AbusedCondomUsageRates data is included", {
  data(AbusedCondomUsageRates)
  expect_that(digest(AbusedCondomUsageRates), equals("e3166122778596bfc56809dd62d7c232"))
})
