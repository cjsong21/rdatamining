## function

var1 <- sum(c(4,3,2))
var1

var2 <- cat(9)
var2

a <- 3
b <- 2
c <- 1
result <- (a * b) + c

test.function <- function(a,b,c){
  result <- (a * b) + c
  return(result)
}
test.function(2,3,1)
test.function(a,b,c)


## 변수

var1 <= 10
var1
class(var1)
## "numeric"

var1 <- 'a string'
var1
class(var1)
## "character"

var1 <- 2
var1
class(var1)
## "numeric"


## Vectors

aaa <- numeric(length = 5)
aaa[1] = 6
aaa[2] <- 2
classs(aaa)
aaa[1] - aaa[2]
aaa
aaa[3] = 'a string'
class(aaa)
aaa[1] - aaa[2]
## Error in aaa[1] - aaa[2] : non-numeric argument to binary operator

aaa[4] <- 5
aaa[3] <- 3
aaa[7] <- 8



bbb <- c()
bbb[1] <- 1
bbb[2] <- 2

ccc <- c(1,2)


## Lists

aaa <- list()
aaa[1] <- 4
aaa[2] <- 5
aaa[3] <- 'a string'
aaa
aaa[2] - aaa[1]
## Error in aaa[2] - aaa[1] : non-numeric argument to binary operator
aaa[[2]] - aaa[[1]]

aab <- list()
aab[[1]] <- c(1,2,3)
aab[[2]] <- aaa
aab


## Matrix and array

numeric.vector <- 1:20
attr(numeric.vector, 'dim') <- c(10,2)
class(numeric.vector)


numeric.vector <- 1:20
attr(numeric.vector, 'dim') <- c(2,5,2)
class(numeric.vector)


## Data frams

numeric.vector <- 1:5
character.vector <- letters[1:5]
class(numeric.vector)
class(character.vector)
df <- data.frame(numeric.vector, character.vector)
class(df)
df
##
#   numeric.vector character.vector
# 1              1                a
# 2              2                b
# 3              3                c
# 4              4                d
# 5              5                e

## Factors

animals <- c('dog', 'cat', 'dog', 'horse')
class(animals)
cat(animals)

animals2 <- c('dog', 'cat', 'dog', 'horse')
as.character(animals2)
as.numeric(animals2)


factor(animals, levels = c('horse', 'dog', 'cat'), ordered = T)
animals



## names

Poker_vector <- c(40, 150, -30, 20, -240)
names(Poker_vector)

names(Poker_vector) <- c('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday')
Poker_vector
#    Monday   Tuesday Wednesday  Thursday    Friday 
#        40       150       -30        20      -240 


TotalPoker <- sum(Poker_vector)
TotalPoker

MeanPoker <- mean(Poker_vector)
MeanPoker

## Matrix *, /

x <- matrix(c(1:9), ncol = 3)
x
#      [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9

x * 2
x / 2
x %% 2
x - 2

t(x)
#      [,1] [,2] [,3]
# [1,]    1    2    3
# [2,]    4    5    6
# [3,]    7    8    9

nrow(x)
ncol(x)


## Vector selection



#  List selection



# data frame selection

test.data.frame <- data.frame(var1 =1:10, var2 = LETTERS[1:10], stringsAsFactors = F)
test.data.frame
test.data.frame[1,2]
subset(test.data.frame, var1 >= 8)
test.data.frame <- data.frame(var1 = 1:10, var2 = LETTERS[1:10], var3 = LETTERS[11:20])
test.data.frame
subset(test.data.frame, var1 >=8, select = var2)
#    var2
# 8     H
# 9     I
# 10    J

subset(test.data.frame, var1 >=8, select = -var2)
#    var1 var3
# 8     8    R
# 9     9    S
# 10   10    T





