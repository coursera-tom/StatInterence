## Quiz3

## Question 1
n <- 9
mean <- 1100
std <- 30
t <- mean + c(-1,1) * qt(.975, n-1) * std /sqrt(n)
t

## Qustion 2
n <- 9
mean <- -2
t <- 0
std <- (t - mean) * sqrt(n) /  qt(.975, n-1)
std

## Question 4
## Use constant variance for confidence internal
n1 <- n2 <- 10
m1 <- 5
m2 <- 3
v1 <- 0.68
v2 <- 0.6
s1 <- sqrt(v1)  # convert variance to std.
s2 <- sqrt(v2)
sp <- sqrt( ((n1 - 1) * s1^2 + (n2-1) * s2^2) / (n1 + n2-2))
md <- m2 - m1
semd <- sp * sqrt(1 / n1 + 1/n2)
t <- md + c(-1, 1) * qt(.975, n1 + n2 - 2) * semd
t

## Question 6
## Use unequal variances for confidence interval
n1 <- n2 <- 100
m1 <- 6
m2 <- 4
s1 <- 2
s2 <- 0.5
df = (s1^2/n1 + s2^2/n2)^2 / ((s1^2/n1)^2/(n1-1) + (s2^2/n2)^2/(n2-1))
t <- m2 - m1 + c(-1,1) * qt(.975, df) * sqrt(s1^2/n1+s2^2/n2)
-t  # old - new

## Question 7
## Approach 1: Use unequal variances for confidence interval
n1 <- n2 <- 9
m1 <- 1
m2 <- -3
s1 <- 1.8
s2 <- 1.5
df = (s1^2/n1 + s2^2/n2)^2 / ((s1^2/n1)^2/(n1-1) + (s2^2/n2)^2/(n2-1))
t <- m2 - m1 + c(-1,1) * qt(.05, df) * sqrt(s1^2/n1+s2^2/n2)
t

## Approach 2: Use constant variances for confidence interval
n1 <- n2 <- 9
m1 <- 1
m2 <- -3
s1 <- 1.8
s2 <- 1.5
sp <- sqrt( ((n1 - 1) * s1^2 + (n2-1) * s2^2) / (n1 + n2-2))
md <- m2 - m1
semd <- sp * sqrt(1 / n1 + 1/n2)
t <- md + c(-1, 1) * qt(.05, n1 + n2 - 2) * semd
t
