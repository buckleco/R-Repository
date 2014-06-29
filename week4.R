# Question 1 - 3 different ways to assign a variable
one <- 1
one
two = 2
two
assign("three", 3)
three

# Question 2 - use the sum() function to count number of missing values in a vector
countvector <- c(1, 3, 5, NA, 14, NA)
countvector
sum(is.na(countvector))

# Question 3 - highlight difference between require() & library()
testrequire <- require("testr")
testrequire
#the sum function below returns '2' because the testrequire variable was constructed using require() which returns either TRUE or FALSE
sum(testrequire, TRUE, TRUE, FALSE)
testlibrary <- library("testl")
testlibrary
#the sum function below returns an error because the testlibrary variable was constructed using library() which does not return anything
sum(testlibrary, TRUE, TRUE, FALSE)
#because the require() function always returns a value instead of an error, it is more desirable to use within other functions