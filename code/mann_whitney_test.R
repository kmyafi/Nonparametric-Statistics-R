#### Exercise from Practical Nonparametric Statistics (3rd ed.) by W.J. Conover ####

#### Chapter 5.1 Two Independent Samples
### Mann-Whitney Test
library(stats)

## Example 1 (Page 276) ----
farm <- c(14.8, 7.3, 5.6, 6.3, 9, 4.2, 10.6, 12.5, 12.9, 16.1, 11.4, 2.7) #x
town <- c(12.7, 14.2, 12.6, 2.1, 17.7, 11.8, 16.9, 7.9, 16, 10.6, 5.6, 5.6, 7.6,
          11.3, 8.3, 6.7, 3.6, 1, 2.4, 6.4, 9.1, 6.7, 18.4, 3.2, 6.2, 6.1, 15.3,
          10.6, 1.8, 5.9, 9.9, 10.6, 14.8, 5, 2.6, 4) #y

# With Wilcoxon Test
wilcox.test(town, farm, exact = F) # Different test statistic

# Manual
## Farm
temp <- farm
category <- rep("Farm", length(temp))
df1 <- data.frame(temp, category) 

## Town
temp <- town
category <- rep("Town", length(temp))
df2 <- data.frame(temp, category)

## Combined
df <- rbind(df1, df2)
df <- df[order(df$temp), ]
df$rank <- rank(df$temp)
df$x <- ifelse(df$category == "Farm", df$temp, 0)
df$y <- ifelse(df$category == "Town", df$temp, 0)

## Test statistic
(T.stat <- sum(df[df$category == "Farm", ]$rank))
n <- length(farm)
m <- length(town)
N <- n + m
r_sq <- sum(df$rank^2)

# Upper tailed, reject H0: T1 > z_(1-alpha)
# Lower tailed, reject H0: T1 < z_alpha
# Two tailed, reject H0: T1 > z_(1-alpha/2) or T1 < z_(alpha/2)

T1 <- (T.stat - n*((N + 1)/2))/sqrt((n*m*r_sq/(N*(N - 1)) - n*m*(N + 1)^2/(4*(N - 1)))) 
T1
qnorm(.95) # Upper tailed: 0.6431365 < 1.644854, failed to reject H0


## Quiz 2021 ----
control <- c(3, 6, 4, 5, 5, 8, 6, 5, 7, 2) #x
medicineA <- c(2, 3, 1, 4, 7, 5, 5, 4, 2, 1) #y

# With Wilcoxon Test
wilcox.test(control, medicineA, exact = F) # Different test statistic

# Manual
## Control
temp <- control
category <- rep("Control", length(temp))
df1 <- data.frame(temp, category) 

## Medicine A
temp <- medicineA
category <- rep("Medicine A", length(temp))
df2 <- data.frame(temp, category)

## Combined
df <- rbind(df1, df2)
df <- df[order(df$temp), ]
df$rank <- rank(df$temp)
df$x <- ifelse(df$category == "Control", df$temp, 0)
df$y <- ifelse(df$category == "Medicine A", df$temp, 0)

## Test statistic
(T.stat <- sum(df[df$category == "Control", ]$rank))
n <- length(control)
m <- length(medicineA)
N <- n + m
r_sq <- sum(df$rank^2)

# Upper tailed, reject H0: T1 > z_(1-alpha)
# Lower tailed, reject H0: T1 < z_alpha
# Two tailed, reject H0: T1 > z_(1-alpha/2) or T1 < z_(alpha/2)

T1 <- (T.stat - n*((N + 1)/2))/sqrt((n*m*r_sq/(N*(N - 1)) - n*m*(N + 1)^2/(4*(N - 1)))) 
T1
qnorm(.95) # Upper tailed: 1.912976 > 1.644854, reject H0