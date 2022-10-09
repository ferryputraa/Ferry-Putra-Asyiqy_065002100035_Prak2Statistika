library(RMySQL)
con = dbConnect(MySQL(), user = 'root', password = '', dbname = 'ps2_ferry', host = 'localhost')
dbListTables(con) 
myQuery <- "select * from ferry_prak1;"
df <- dbGetQuery(con, myQuery)

library(dplyr)
df<-filter(df,Gender=="Pria")
print(df)