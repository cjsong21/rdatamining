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

