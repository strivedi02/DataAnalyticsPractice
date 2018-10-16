#solution 1----------------------------------------------------------------------
#Ho : mu >= 25 ; H1 : mu < 25
n = 10
xbar = 22
mu = 25
s = 1.5
alpha = 0.05

#since sample size is small, we wil use student's t distribution here. 
#This is lower tailed test and right tailed test

Se = s/sqrt(n)
test_statistic = (xbar - mu) / Se
degrees_of_freedom = n - 1
tvalue = qt(alpha, degrees_of_freedom)
test_statistic
tvalue
#we failed to reject the null hypothesis

#solution 2----------------------------------------------------------------------
levels = c(0.593, 0.142, 0.329, 0.691, 0.231, 0.793,0.519, 0.392, 0.418)
xbar = mean(levels)
xbar
s = sd(levels)
s
mu = 0.3
n = 9
alpha = 0.95
# Ho : mu <= 0.3 ; H1 : mu > 0.3
se = s/sqrt(n)
se
test_statistic = (xbar - mu) / se
degrees_of_freedom = n - 1
tvalue = qt(alpha, degrees_of_freedom)
test_statistic
tvalue
#we failed to reject the null hypothesis
#another method
#t.test(x,y = NULL, alternative = c("two.sided),"less","greater"), mu = 0,
# paired = FALSE, var.equal = FALSE, conf.level = 0.95)

salmonella_level = c(0.593, 0.142, 0.329, 0.691, 0.231, 0.793,0.519, 0.392, 0.418)
t.test(salmonella_level, alternative = "greater", mu = 0.3)
tvalue = qt(0.95, 8)
tvalue

#solution 3----------------------------------------------------------------------
#Ho : mu(t) <=mu(c) ; H1 : mu(t) > mu(c)
control = c(91, 87, 99, 77, 88, 91)
mean(control)
treat = c(101, 110, 103, 93, 99, 104)
mean(treat)
n = 12
t.test(x = treat, y = control, alternative = "greater", var.equal = TRUE)
t.test
tvalue = qt(0.95, 10)
tvalue
# since test statistic value t > tvalue, we reject the null hypothesis

#solution 4----------------------------------------------------------------------
#Ho : mu(p) <= mu(r) ; H1 : mu(p) > mu(r)
reg = c(16, 20, 21, 22, 23, 22, 27, 25, 27, 28)
mean(reg)
prem = c(19, 22, 24, 24, 25, 25, 26, 26, 28, 32)
mean(prem)
n = 10
t.test(x = prem, y = reg, alternative = "greater", paired = TRUE)
tvalue = qt(0.95, 18)
tvalue
#by default var.equal is false
# since test statistic value t > tvalue, we reject the null hypothesis
# since prem is good, we accept the alternate hypothesis

#solution 5----------------------------------------------------------------------
#Ho : the observed distribution fits the expected 
#H1 : the observed distribution doesnot fits the expected

observed = c(21, 109, 62, 15)
expected = (c(8, 47, 34, 11) / 100) * sum(observed)
expected
test_stat = sum((observed - expected)^2 / expected)
test_stat
cric = qchisq(0.05, 3, lower.tail = F)
cric
crit = qchisq(0.95, 3, lower.tail = T)
crit
chisq.test(observed, p = c(0.08, 0.47, 0.34, 0.11))

#we fail to reject null hypothesis/accept the null hypothesis

#solution 6----------------------------------------------------------------------
#Ho : games are independent of gender
#H1 : games are not independent of gender
#degrees of freedom : (r-1)*(c-1) = 2

men <- c(200,150,50)
mean_men <- mean(men)
women <- c(250,300,100)
mean_women <- mean(women)
sd_men <- sd(men)
sd_women <- sd(women)
men_sig <- qchisq(p = c(200,150,50), 2, lower.tail = F)
men_sig
women_sig <- qchisq(p = c(250,300,100), 2, lower.tail = F)
women_sig

#solution 7----------------------------------------------------------------------
#Ho : sigma^2(0.01) = sigma^2(0.01)
#H1 : sigma^2(0.01) != sigma^2(0.01)
n = 20
s = 0.0153
alpha = 0.05
sigma = 0.01
t = ((n - 1)*s) / sigma
t
qchisq(0.025, 19)
qchisq(0.975, 19)
#two sided test
# since the test statistics value lies in the acceptance region,
#we fail to reject the null hypothesis

#solution 8----------------------------------------------------------------------
#Ho : sigma_a = sigma_b
#H1 : sigma_a != sigma_b

brand_a = c(3.2, 3.4, 2.8, 3, 3, 3, 2.8, 2.9, 3, 3)
brand_b = c(3, 3.5, 2.9, 3.1, 2.3, 2, 3, 2.9, 3, 4.1)
sd_a = sd(brand_a)
sd_b = sd(brand_b)
sd_a
sd_b
fstat =((sd_a)^2 / (sd_b)^2)
fstat

qf(p = 0.05, df1 = 9, df2 = 9)
qf(p = 0.95, df1 = 9, df2 = 9)

#they are not similar

#solution 9----------------------------------------------------------------------
#Ho : mu1 = mu2 = mu3
#H1 : not all the means are equal

x1 = c(643, 655, 702)
x2 = c(469, 427, 525)
x3 = c(484, 456, 402)

x = c(x1, x2, x3)
sst = sum((x - mean(x))^2)
sst
m = 3
n = length(x1)
ssw = sum((x1 - mean(x1))^2) + sum((x2 - mean(x2))^2) + sum((x3 - mean(x3))^2)
ssw
ssb = sst - ssw
ssb
df_ssw = m * (n - 1)
df_ssb = m -1
f_stat = (ssb / df_ssb) / (ssw / df_ssw)
f_stat
f_crit = qf(0.05, df_ssb, df_ssw, lower.tail = FALSE)
f_crit

# since f_statistic > f_critical : 
#Hence the statistic lies in the critical region.
#we fail to accept null hypothesis and accept the alternate hypothesis.