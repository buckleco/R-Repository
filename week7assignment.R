#-----------------------------------------------------------
#Item 2 from the assignment - Read data from simplecharter
#-----------------------------------------------------------
library("RSQLite")
#Load the driver
sqlite <- dbDriver("SQLite")
#Create a connection to the database using the driver from above
simplecharterdb <- dbConnect(sqlite,"C:/Users/buckl_000/Documents/R/Scripts/simplecharter.sqlite")
#List all the tables in the database to check that the connection works
dbListTables(simplecharterdb)
#Select everything from the 'allcharters' table & put it in a dataframe
allcharters <- dbGetQuery(simplecharterdb, "SELECT * FROM allcharters")
#Print out the first 6 rows to check that the data is coming through
head(allcharters)


#-------------------------------------------------------------------
#Item 3 from the assignment - Export the Boston dataframe to SQLite
#-------------------------------------------------------------------
library("RSQLite")
library("MASS")
#Check that the Boston dataframe is feeding correctly
head(Boston)
#Create the connection to a new database called boston.sqlite
bostondb <- dbConnect(SQLite(), dbname="boston.sqlite")
#Using the connection created above write the Boston dataframe to a table called bostontable
dbWriteTable(conn = bostondb, name = "bostontable", value = Boston, row.names = FALSE)
#Check the that table was created
dbListTables(bostondb)
#Select all the data from the new bostontable table
bostondbdataframe <- dbGetQuery(bostondb, "SELECT * FROM bostontable")
#Check the dataframe to ensure the data is there as expected
head(bostondbdataframe)
