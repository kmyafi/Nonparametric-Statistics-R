#### Exercises from Practical Nonparametric Statistics (3rd ed.) by W.J. Conover ####

#### Chapter 5.3 A Test for Equal Variances
### Squared Ranks Test

## Example 1 (Page 304) ----
present <- c(10.8, 11.1, 10.4, 10.1, 11.3) #X
new <- c(10.8, 10.5, 11, 10.9, 10.8, 10.7, 10.8) #Y

# Present
temp <- present
Xbar <- mean(temp)
category <- rep("Present", length(temp))
temp_absdev <- abs(temp - mean(temp))
df1 <- data.frame(temp, category, temp_absdev) 

# New
temp <- new
Ybar <- mean(temp)
category <- rep("New", length(temp))
temp_absdev <- abs(temp - mean(temp))
df2 <- data.frame(temp, category, temp_absdev)

# Combined
df <- rbind(df1, df2)
df <- df[order(df$temp_absdev), ]
df$rank <- rank(df$temp_absdev)
df$sqrank <- rank(df$temp_absdev)^2

# Test statistic
T.stat <- sum(df[df$category == "Present", ]$sqrank)
n <- length(present)
m <- length(new)
N <- n + m
rsq_bar <- mean(df$sqrank)
r_qt <- sum(df$sqrank^2)

# Upper tailed, reject H0: T1 > z_(1-alpha)
# Lower tailed, reject H0: T1 < z_alpha
# Two tailed, reject H0: T1 > z_(1-alpha/2) or T1 < z_(alpha/2)

T1 <- (T.stat - n*rsq_bar)/sqrt(n*m*r_qt/(N*(N-1)) - n*m*(rsq_bar^2)/(N-1))
T1
qnorm(.95) # Upper tailed: 2.327331 > 1.644854, reject H0


## Exercise 1 (Page 310) ----
men <- c(58, 76, 82, 74, 79, 65, 74, 86) #X
women <- c(66, 74, 69, 76, 72, 73, 75, 67, 68) #Y

# Men
temp <- men
Xbar <- mean(temp)
category <- rep("Men", length(temp))
temp_absdev <- abs(temp - mean(temp))
df1 <- data.frame(temp, category, temp_absdev) 

# Women
temp <- women
Ybar <- mean(temp)
category <- rep("Women", length(temp))
temp_absdev <- abs(temp - mean(temp))
df2 <- data.frame(temp, category, temp_absdev)

# Combined
df <- rbind(df1, df2)
df <- df[order(df$temp_absdev), ]
df$rank <- rank(df$temp_absdev)
df$sqrank <- rank(df$temp_absdev)^2

# Test statistic
T.stat <- sum(df[df$category == "Men", ]$sqrank)
n <- length(men)
m <- length(women)
N <- n + m
rsq_bar <- mean(df$sqrank)
r_qt <- sum(df$sqrank^2)

# Upper tailed, reject H0: T1 > z_(1-alpha)
# Lower tailed, reject H0: T1 < z_alpha
# Two tailed, reject H0: T1 > z_(1-alpha/2) or T1 < z_(alpha/2)

T1 <- (T.stat - n*rsq_bar)/sqrt(n*m*r_qt/(N*(N-1)) - n*m*(rsq_bar^2)/(N-1))
T1
qnorm(.95) # Upper tailed: 1.39057 < 1.644854, failed to reject H0