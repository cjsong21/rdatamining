## if ... else


## while



## for, switch

vector <- c('aaa', 'bbb', 'ccc')
for(i in vector) {
  print(i)
}

for (i in 1:length(vector)) {
  print(vector[i])
}


inp <- b
switch(inp,
       a = print('inp is a'),
       b = print('inp is b'),
       c = print('inp is c'),
       print('inp is not a, b, c'))

inp <- 2
switch(inp, 'inp+1', 'inp+2', 'inp+3', 'inp+4')

ifelse(inp > 1, print('big'), print('small'))
ifelse(inp > 1, inp, 0)

