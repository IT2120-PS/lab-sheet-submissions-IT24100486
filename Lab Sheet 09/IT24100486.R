setwd("D:\\SLIIT\\Y2S1\\Probabilty & Statistics\\Labs\\LAb 9\\IT24100486")

y<- rnorm(25,45,2)
print(y)

t.test(y,mu = 46,alternative = "less")
