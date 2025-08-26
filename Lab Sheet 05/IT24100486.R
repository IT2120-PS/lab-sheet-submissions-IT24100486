setwd("C:\\Users\\IT24100486\\Desktop\\IT24100486")
Delivery_Times<-read.table("Exercise - Lab 05.txt",header = TRUE,sep=",")
fix(Delivery_Times)
attach(Delivery_Times)

hist(Delivery_Times$Delivery_Time_.minutes.,
     main = "Histogram of Delivery Time(minutes)",
     xlab = "Delivery Time(minutes)",
     ylab = "Frequency",
     breaks = seq(20,70,length = 10),
     right = FALSE,
     col = "lightblue")


delivery_hist<-hist(Delivery_Time_.minutes.,
                    breaks = seq(20,70,length = 10),
                    right = FALSE,
                    plot = FALSE)
breaks<-delivery_hist$breaks
freq<-delivery_hist$counts
cum_freq<-cumsum(freq)
shifted_cum_freq<-c(0,cum_freq[-length(cum_freq)])

plot(breaks,shifted_cum_freq,
     type = 'l',
     main = "Cumalative Frequncy Polygon(Ogive) for Delivery Times",
     xlab = "Delivery Time(minutes)",
     ylab = "Cumalative Frequency",
     ylim = c(0,max(cum_freq)),
     col = "red",
     lwd = 2)
points(breaks,shifted_cum_freq,
       pch = 16,
       col = "blue")
