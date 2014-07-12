require(XML)
#Website url http://en.wikipedia.org/wiki/Oldest_people
urlpath <- "http://en.wikipedia.org/wiki/Oldest_people"
dfurl <- readHTMLTable(urlpath, which = 1, header = TRUE, stringsAsFactors = FALSE)
head(dfurl) #Display the first few rows
dfurl
