context('All formatting functions')

test_that("DropOutRates is formatted correctly", {
  data(DropOutRates)
  expect_that(digest(format_DropOutRates(DropOutRates)), equals("4447fbc7fc3a1926e46f31afd57a8705"))
})

test_that("AbuseRates is formatted correctly", {
  data(AbuseRates)
  expect_that(digest(format_AbuseRates(AbuseRates)), equals("b144dc7ff3194175e95613087a4fea88"))
})

test_that("AbusedDepressionRates is formatted correctly", {
  data(AbusedDepressionRates)
  expect_that(digest(format_AbusedDepressionRates(AbusedDepressionRates)), equals("3e5b7626da3f2e1068bf8f73d25f6230"))
})

test_that("NotAbusedDepressionRates is formatted correctly", {
  data(NotAbusedDepressionRates)
  expect_that(digest(format_NotAbusedDepressionRates(NotAbusedDepressionRates)), equals("c2498afda1617fab7778a1ad23f21657"))
})

test_that("AbusedCondomUsageRates is formatted correctly", {
  data(AbusedCondomUsageRates)
  expect_that(digest(format_CondomUsageRates(AbusedCondomUsageRates)), equals("5f5bca14e8784ea0d740f17676fbff48"))
})

test_that("NotAbusedCondomUsageRates is formatted correctly", {
  data(NotAbusedCondomUsageRates)
  expect_that(digest(format_CondomUsageRates(NotAbusedCondomUsageRates)), equals("faec058d15c3ab0922d55900a00f9571"))
})