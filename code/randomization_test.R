#### Exercises from Practical Nonparametric Statistics (3rd ed.) by W.J. Conover ####

#### Chapter 5.11 Fisher's Method of Randomization
### Randomization Test
install.packages("combinat")
library(combinat) 

## Exercise 1 (Page 416) ----
A <- c(0, 2, 0, 1, 2) #x
B <- c(3, 5, 1, 4, 3) #y

# Calculate dimension
n <- length(A)
m <- length(B)

# Shape a list
X <- rep(1, n) # 1 == X
Y <- rep(0, m) # 0 == Y
group <- c(X,Y)

# Calculate combinations
combn(group, n)
combination <- ncol(combn(group, n))
combination

# Calculate number of groups
round(combination * 0.05)

# Combined observations
combined_obs <- unique(permn(group))

value <- c(sort(c(A,B)))
combined_obs_value <- lapply(combined_obs, "*" , value)

df <- do.call(rbind, combined_obs_value)

data_frame <- as.data.frame(df)
colnames(data_frame) <- value

# Test statistic
data_frame$T1 <- rowSums(data_frame)
T1 <- min(data_frame$T1)
T1


## Exercise 2 (Page 416) ----
women <- c(12, 14, 15, 10, 12) #x
men <- c(15, 17, 16) #y

# Calculate dimension
n <- length(women)
m <- length(men)

# Shape a list
X <- rep(1, n) # 1 == X
Y <- rep(0, m) # 0 == Y
group <- c(X,Y)

# Calculate combinations
combn(group, n)
combination <- ncol(combn(group, n))
combination

# Calculate number of groups
round(combination * 0.05)

# Combined observations
combined_obs <- unique(permn(group))

value <- c(sort(c(women,men)))
combined_obs_value <- lapply(combined_obs, "*" , value)

df <- do.call(rbind, combined_obs_value)

data_frame <- as.data.frame(df)
colnames(data_frame) <- value

# Test statistic
data_frame$T1 <- rowSums(data_frame)
T1 <- min(data_frame$T1)
T1