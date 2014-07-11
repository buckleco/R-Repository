path <- "C:/Users/buckl_000/Documents/R/Scripts/pizza-store-data.csv"
dfcsv <- read.table(file = path, header = TRUE, sep = ",")
head(dfcsv) #Display the first few rows
summary(dfcsv) #Display summary information

# Column 1 contains dates 
# From the summary() output it appears that each date  occurs 4 times

# Column 2 contains street names
# There are 4 street names, each appearing 365 times

# Column 3 contains number of pizzas
# There is a minimum of 0 pizzas and maximum of 417 pizzas
# The median is 215 and the mean is 227.1

# Column 4 contains number of customers
# There is a minimum of 0 customers and maximum of 389 customers
# The median is 182 and the mean is 189.2

class(dfcsv[, 1]) # Column 1 is of type 'factor'
class(dfcsv[, 2]) # Column 2 is of type 'factor'
class(dfcsv[, 3]) # Column 3 is of type 'integer'
class(dfcsv[, 4]) # Column 4 is of type 'integer'
