context('All formatting functions')

test_that("DropOutRates is formatted correctly", {
  data(DropOutRates)
  expect_that(digest(format_DropOutRates(DropOutRates)), equals("4447fbc7fc3a1926e46f31afd57a8705"))
})

test_that("AbuseRates is formatted correctly", {
  data(AbuseRates)
  expect_that(digest(format_AbuseRates(AbuseRates)), equals("b144dc7ff3194175e95613087a4fea88"))
})

test_that("DepressionAbuseRates is formatted correctly", {
  data(DepressionAbuseRates)
  expect_that(digest(format_DepressionAbuseRates(DepressionAbuseRates)), equals("3e5b7626da3f2e1068bf8f73d25f6230"))
})

test_that("DepressionNoAbuseRates is formatted correctly", {
  data(DepressionNoAbuseRates)
  expect_that(digest(format_DepressionNoAbuseRates(DepressionNoAbuseRates)), equals("c2498afda1617fab7778a1ad23f21657"))
})
