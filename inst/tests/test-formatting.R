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

test_that("AbusedDebutRates is formatted correctly", {
  data(AbusedDebutRates)
  expect_that(digest(format_DebutRates(AbusedDebutRates)), equals("62816b78aa1ddfd9c5a54449fa526720"))
})

test_that("NotAbusedDebutRates is formatted correctly", {
  data(NotAbusedDebutRates)
  expect_that(digest(format_DebutRates(NotAbusedDebutRates)), equals("b2dbab5edbfdcada9437859558e45a6e"))
})
