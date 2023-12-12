library(RPostgres)

connection <- dbConnect(RPostgres::Postgres(), host = "localhost", port = 5432, dbname = "student", user = "postgres", password = "postgres")

dbExecute(connection, "CREATE TABLE users3 (id INT, name VARCHAR(50))")
dbExecute(connection, "INSERT INTO users3 VALUES (101, 'Suriya')")
dbExecute(connection, "INSERT INTO users3 VALUES (102, 'Prakash')")

result <- dbGetQuery(connection, "SELECT * FROM users3")
result
