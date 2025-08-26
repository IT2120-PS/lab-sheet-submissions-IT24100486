setwd("D:\\SLIIT\\Y2S1\\Probabilty & Statistics\\IT24100486_PS lab5")
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
                    breaks = seq(20,70,length.out = 10),
                    right = FALSE,
                    plot = FALSE)

breaks <- delivery_hist$breaks
freq <- delivery_hist$counts

# cumulative frequency
cum_freq <- cumsum(freq)

# keep same length as breaks (11 values)
cum_freq_with_zero <- c(0, cum_freq)

# plot ogive
plot(breaks, cum_freq_with_zero,
     type = 'l',
     main = "Cumulative Frequency Polygon (Ogive) for Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     ylim = c(0, max(cum_freq)),
     col = "red",
     lwd = 2)

points(breaks, cum_freq_with_zero,
       pch = 16,
       col = "blue")
