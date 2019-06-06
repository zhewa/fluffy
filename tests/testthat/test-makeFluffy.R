# makeFluffy
library(fluffy)
context("Testing makeFluffy")

test_that(desc = "Testing makeFluffy", {
    expect_equal(makeFluffy("abc"), "~{{abc}}~")
    expect_equal(makeFluffy(12345), "~{{12345}}~")
    expect_equal(makeFluffy(matrix(rep(9, 9), ncol = 3, nrow = 3)),
        rep("~{{9}}~", 9))
    expect_equal(makeFluffy(NULL), "~{{}}~")
})

# add unit tests for other fuctions below
