library(mongolite)
conn <- mongo(collection='myCollection2', db='myDatabase')

doc <- list(name = "Srisankaran" ,age = 23)
conn$insert(doc)
conn$find()



conn$find('{"age" : {"$lt" : 35}}')


conn <- mongo(collection='myCollection2', db='myDatabase')
doc2 <- list(
  list(name = "Mani", age = 34),
  list(name = "Murali", age = 25),
  list(name = "Fameen", age = 19)
)

for(d in doc2){
  conn$insert(d)
}
conn$find()




conn <- mongo(collection='myCollection2', db='myDatabase')
documents <- list(
  list(name = "Aravind", age = 30),
  list(name = "Prakash", age = 35),
  list(name = "Ajay", age = 40)
)


for (document in documents) {
  conn$insert(document)
}

conn$find()


conn$update('{"name": "Murali"}', '{"$set" : { "age" : 40}}')
conn$find()


conn$remove('{"age" : 35}')
conn$find()