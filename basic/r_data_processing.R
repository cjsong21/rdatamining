## View

dim(iris)
names(iris)
str(iris)

attributes(iris)
View(iris)

## Explore

summary(iris)

range(iris$Sepal.Length)
quantile(iris$Sepal.Length)
quantile(iris$Sepal.Length, c(0.1, 0.3, 0.65))

mean(iris$Sepal.Length)
var(iris$Sepal.Length)
sd(iris$Sepal.Length)
hist(iris$Sepal.Length)


## Sorting

vec1 <- c(3, 2, 5, 1, 4)
sort(vec1)
sort(c(T,T,F,F))
sort(c('play', 'plan', 'plot', 'proof'))

vec1 <- c(2, 3, 5, 1, 4)
order(vec1)

vec1[order(vec1)]
vec1 <- c(3,2,5,1,4)
vec2 <- c(2,2,3,3,1)

# 정렬기준을 첫번째로 내림차순(decreasing=T)으로 하고, 
# 동일한 data가 있을 경우(중복이 될경우) 
# 두번째로  올림차순(decreasing=F)으로 정렬한다.
order(vec2, vec1, decreasing = c(T,F))
# 4 3 2 1 5
order(vec2, vec1, decreasing = c(F,T))
# 5 1 2 3 4

iris.ordered <- iris[order(iris$Sepal.Length, iris$Sepal.Width), ]
View(iris)
View(iris.ordered)


## apply functions

sample.list <- list(a = runif(100, 0, 1), b = runif(500, 0, 100), c = runif(35, 0.200))
sapply(sample.list, quantile, probs = 0.75)
sapply(sample.list, function(x) round(sum(x + 2)))
sapply(sample.list, function(x) quantile(x, probs = 0.75))
#vapply(sample.list, quantile, probs = 0.75, c(mean(sample.list)))


