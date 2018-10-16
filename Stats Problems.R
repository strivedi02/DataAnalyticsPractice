# solution 1-------------------------------------------------------------------
pop_mean <- 29321
pop_sd <- 2120
sample_size <- 100
#P(X` < 29000)
x_sam <- 29000
sam_sd <- pop_sd / sqrt(sample_size)
z <-  (x_sam - pop_mean) / sam_sd
z
prob <- pnorm(z)
prob
#another method
pnorm(x_sam,pop_mean,sam_sd)

# solution 2-------------------------------------------------------------------
pop_mean <- 220
pop_sd <- 15
sample_size <- 40
#P(X` < 215)
sam_sd <- pop_sd / sqrt(sample_size)
pnorm(215,pop_mean,sam_sd)

# solution 3-------------------------------------------------------------------
n <- 225
x_bar <- 11.6
sd <- 4.1
# lower_tail <- qnorm(0.05) no use
z <- qnorm(0.95) #upper tail
z
qnorm(0.95)
se <- sd/sqrt(n)
ci_lower <- x_bar - (z * se)
ci_upper <- x_bar + (z * se)
ci_lower
ci_upper

# solution 4-------------------------------------------------------------------
n <- 100
x_bar <- 49
sd <- 4.49
z <- qnorm(0.95)
z
se <- sd/sqrt(n)
se
ci_lower <- x_bar - (z * se)
ci_upper <- x_bar + (z * se)
ci_lower
ci_upper

# solution 5-------------------------------------------------------------------
n = 100
xbar = 1014
var = 62.5
sd = 7.90
z_score = qnorm(0.972)
z_score
se = sd / sqrt(n)
ci_upper = xbar + z_score * se
ci_lower = xbar - z_score * se
ci_upper
ci_lower

# solution 6-------------------------------------------------------------------
p <- 175/1200
n <- 1200
q <- 1 - p
z <- qnorm(0.975)
z
ci_low <- p - (z * sqrt((p*q)/n))
ci_up <- p + (z * sqrt((p*q)/n))
ci_low
ci_up
ci_low_act <- ci_low * 1200
ci_up_act <- ci_up * 1200
ci_low_act
ci_up_act
# solution 7-------------------------------------------------------------------
# a) Ho: mu = 21.8 H1: mu != 21.8 two sided
# b) Ho: mu <= 20% H1: mu > 20% upper tail
# solution 8-------------------------------------------------------------------
#Ho: mu <= 10000 H1: mu < 10000
mu <- 10000
x_bar <- 9900
sd <- 120
n <- 30
se <- sd/sqrt(n)
se
T <- (x_bar - mu)/se #test statistics value
T
qnorm(0.05)
# therefore we reject null the hypothesis with 5% level of significance