# makeFluffy
library(fluffy)
context("Testing fluffyChecksum")

test_that(desc = "Testing fluffyChecksum", {
    expect_equal(fluffyChecksum("abc"),
        "~{{0aa9c59ea893e51a8cc55e8ea353e592}}~")
    expect_equal(fluffyChecksum(12345, algo = "sha1"),
        "~{{e0f164bf75b72a5cd08cbb97f77088b623e9e150}}~")
    expect_equal(fluffyChecksum(matrix(rep(9, 9), ncol = 3, nrow = 3)),
        "~{{87c9fc9fee101fb84463323ee092eb37}}~")
    expect_equal(fluffyChecksum(NULL),
        "~{{f9e884084b84794d762a535f3facec85}}~")
})

# add tests for other fuctions below
