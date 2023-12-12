library("xlsx")
df1 <- data.frame(Name= c("Suriya","Rahim","Rayan"),Age=c(21,20,22),Roll.no = c("8001","8002","8003"),Native=c("Salem","Coimbatore","Chennai"))
write.xlsx(df1,"F:/Bigdata assignment/readwrite.xlsx")

read_data <- read.xlsx("F:/Bigdata assignment/readwrite.xlsx", sheetIndex=1)
print(read_data)

