setwd("C:\\Users\\IT24100486\\Desktop\\IT24100486")
branch_data<-read.table("Exercise.txt",header = TRUE,sep=",")
fix(branch_data)
attach(branch_data)



class(branch_data$Branch)
class(branch_data$Sales_X1)
class(branch_data$Advertising_X2)
class(branch_data$Years_X3)

boxplot(Sales_X1, main="Box plot for Branch Sales",
        ylab = "Sales (in millions)",outline = TRUE,outpch = 8,horizontal = TRUE)

summary(Advertising_X2)


quantile(Advertising_X2)

IQR(Advertising_X2)

get.outliers <- function(z){
  q1 <- quantile(z)[2]
  q3 <- quantile(z)[4]
  iqr <- q3-q1
  
  ub <- q3 + 1.5*iqr
  lb <-q1 - 1.5*iqr
  
  print(paste("Upper Bound =",ub))
  print(paste("Lower Bound =",lb))
  print(paste("Outliers:",paste(sort(z[z<lb | z> ub],collapse=",")))
}
get.outliers(branch_data$Sales_X1)
get.outliers((branch_data$Years_X3))

