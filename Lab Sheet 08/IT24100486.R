# Setting the directory
setwd("D:\\SLIIT\\Y2S1\\Probabilty & Statistics\\Labs\\Lab 8")  # Change to your path

# Importing the data set
data = read.csv("Exercise - LaptopsWeights.csv", header=TRUE) # Assuming data file name; change if different
fix(data)
attach(data)

# Extract the weight column
laptop_bag_weights <- data$Weight
 



# -------------------------------
# Question 1: Population Mean and Standard Deviation
popmn <- mean(Weight.kg.) 
popmn
popsd <- sd(Weight.kg.)   
popsd



## Question 02
# Generate 25 random samples of size 6 (with replacement)

samples <- c()
n <- c()

for (i in 1:25) {
  s <- sample(laptop_bag_weights, 6, replace = TRUE)  # one sample
  samples <- cbind(samples, s)                        # add column
  n <- c(n, paste('s', i))                            # sample names
}

colnames(samples) <- n  # assign column names

# Calculate sample means and variances column-wise
s.means <- apply(samples, 2, mean)
s.vars  <- apply(samples, 2, var)
s.sds   <- apply(samples, 2, sd)

results <- data.frame(
  Sample = colnames(samples),
  Sample_Mean = round(s.means,3),
  Sample_SD   = round(s.sds,3)
)

print("=== Sample Results (25 samples) ===")
print(results)



## Question 03: Mean and SD of the 25 sample means

# Calculate mean of the sample means
samplemean <- mean(s.means)

# Calculate variance of the sample means
samplevars <- var(s.means)

# Standard deviation of sample means
samplesd <- sd(s.means)

# Display results
print("=== Mean and SD of Sample Means ===")
samplemean
samplesd

## Relationship with population values
print("=== Relationship with Population ===")
popmn            # population mean
popsd <- sqrt(popvar)  # population standard deviation
popsd


print("Relationship:")
print("1. The mean of the sample means is approximately equal to
      the population mean (Law of Large Numbers).")
print("2. The standard deviation of the sample means is smaller than the population SD
      and approximately equals population SD divided by sqrt(sample size) (Central Limit Theorem).")
print(paste("Theoretical SD of sample means =", round(popsd/sqrt(6),3)))
