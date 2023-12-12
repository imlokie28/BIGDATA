library(RMySQL)

connection = dbConnect(MySQL(), user = "root", password = "root", dbname = "userdb1", host = "localhost")

dbListTables(connection)

query = dbSendQuery(connection, "create table students4 (id int primary key, name varchar(10))");
query = dbSendQuery(connection, "insert into students4 values (1001,'Suriya')")

result = dbSendQuery(connection, "select * from students4")
data = fetch(result)
print(data)