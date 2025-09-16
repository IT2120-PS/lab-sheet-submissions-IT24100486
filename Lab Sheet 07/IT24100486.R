getwd()
setwd("D:\SLIIT\Y2S1\Probabilty & Statistics\Labs\Lab 7\IT24100486")


# Exercise 1:
# Random variable X: minutes the train arrives after 8:00 a.m.
# Parameters: min = 0, max = 40
punif(25, min = 0, max = 40, lower.tail = TRUE) - punif(10, min = 0, max = 40, lower.tail = TRUE)


# Exercise 2:
# Random variable X: time (in hours) to complete a software update
# Rate (λ) = 1/3 
# P(X <= 2)
pexp(2, rate = 1/3, lower.tail = TRUE)


# Exercise 3: 
# Mean (μ) = 100
# Standard deviation (σ) = 15 
# i. What is the probability that a randomly selected person has an IQ above 130? [5]
# P(X > 130)
1 - pnorm(q = 130, mean = 100, sd = 15, lower.tail = FALSE)


# ii. What IQ score represents the 95th percentile? 
qnorm(p = 0.95, mean = 100, sd = 15, lower.tail = TRUE)

