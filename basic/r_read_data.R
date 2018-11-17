## Reading CSV

path <- 'https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data'
data <- read.table(path, sep=',')
class(data)

data <- read.csv(path, header=F)

data <- readLines(path)
class(data)
length(data)



## Reading JSON, XML
install.packages('RJSONIO')
library(RJSONIO)
url <- 'http://api.worldbank.org/v2/datacatalog?format=json'
json <- fromJSON(url)


install.packages('rjson')
library(rjson)
url <- 'http://api.worldbank.org/v2/datacatalog?format=json'
raw.json <- readChar(url, nchars = 'le6')



## Reading Excel
install.packages('openxlsx')
library(openxlsx)

# 엑셀파일 입력
xlsxFile <- 'https://github.com/awalker89/openxlsx/raw/master/inst/readTest.xlsx'
xlsx.data <- read.xlsx(xlsxFile)
View(xlsx.data)

# 엑셀 파일 출력 --> Rtools 필요 --> c 컴파일러 필요
write.xlsx(data.csv, file='iris.R.xlsx')

