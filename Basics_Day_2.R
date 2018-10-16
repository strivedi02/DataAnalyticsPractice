# destroys the environment list
rm(list = ls(all = T))
#------------------------------------------------------------------------
place <- c("HSR LayoutBTM Layout","BTM Layout")
city <- c("Bangalore","Bangalore")
property_price <- c(5000,6000)
Category <- c("Dirty", "Clean")
data <- data.frame(place,city,property_price,Category)
data


## solution 1------------------------------------------------------------------------
# The mean will be impacted the most
## solution 2------------------------------------------------------------------------
first_group <- c(0,0,0,0,0,0,1,1,1,16)
sec_group <- c(3,12,3.5,14,3,2.8,5,9,5.5,9)
str(sec_group)
thr_group <- c(14,9.5,4.5,7.5,5,2,4.8,3.6,6,8.5)
fou_group <- c(9,4.5,9,8,4,6,5,3.5,2.8,12)
fif_group <- c(16,12,6.5,1,11,5,3,8,3,4)
six_group <- c(13,10,10,1,3,4,6,3.8,4,8)
data_frame <- data.frame(first_group,sec_group,thr_group,fou_group,fif_group,six_group)
names(data_frame) <- c("Group 1","Group 2","Group 3","Group 4","Group 5","Group 6")
data_frame
m <- data.frame(mean(data_frame[,1]),mean(data_frame[,2]),mean(data_frame[,3]),mean(data_frame[,4]),mean(data_frame[,5]),mean(data_frame[,6]))
names(m) <- c("mean 1","mean 2","mean 3","mean 4","mean 5","mean 6")
m
med <- data.frame(median(data_frame[,1]),median(data_frame[,2]),median(data_frame[,3]),median(data_frame[,4]),median(data_frame[,5]),median(data_frame[,6]))
names(med) <- c("median 1","median 2","median 3","median 4","median 5","median 6")
med
total_mean = apply(X = m, MARGIN = 1, FUN = mean)
total_mean
grand_mean = mean(c(first_group,sec_group,thr_group,fou_group,fif_group,six_group))
grand_mean
# Yes the average of averages and average on the entire data frame is same
fif_group_sec <- c(fif_group,17)
six_group_sec <- c(six_group,20)
print(mean(fif_group_sec))
print(mean(six_group_sec))

#solution 3
## ------------------------------------------------------------------------
delivery = read.csv(file = "deliveryserivces.csv",sep = ",",header=TRUE)

## ------------------------------------------------------------------------
delivery
mn = mean(mean(delivery$EagleBoys)+mean(delivery$FoodPanda)+mean(delivery$Swiggy)+mean(delivery$PiazzaHut)+mean(delivery$Dominos))
col_1_med <- median(delivery$EagleBoys)
col_2_med <- median(delivery$FoodPanda)
col_3_med <- median(delivery$Swiggy)
col_4_med <- median(delivery$PiazzaHut)
col_5_med <- median(delivery$Dominos)
q1 = quantile(delivery$EagleBoys)[2]
q2 = quantile(delivery$EagleBoys)[3]
q3 = quantile(delivery$EagleBoys)[4]
min = range(delivery$EagleBoys)[1]
max = range(delivery$EagleBoys)[2]
iqr = IQR(delivery$EagleBoys)
var = var(delivery$EagleBoys)
sd= sd(delivery$EagleBoys)
boxplot(delivery$EagleBoys)
boxplot(delivery$FoodPanda)
boxplot(delivery$Swiggy)
boxplot(delivery$PiazzaHut)
boxplot(delivery$Dominos)

boxplot.matrix(as.matrix(delivery),col = c("red","green","blue","yellow","violet"),ylab = "Delivery Time",main="Boxplot for Delivery Time from different sources in Data ")

## solution 4------------------------------------------------------------------------
x = c(15,21,20,20,20)
y = c(30,25,12,35,0)
worker = data.frame(x,y)
rownames(worker)= c("Mon","Tue","Wed","Thu","Fri")
colnames(worker)= c("Philip","Mathews")
worker

(mean_Philip = mean(worker$Philip))
(mean_Mathews = mean(worker$Mathews))

(median_Philip = median(worker$Philip))
(medain_Mathews = median(worker$Mathews))

(range_Philip = max(worker$Philip)-min(worker$Philip))
(range_Mathews = max(worker$Mathews)-min(worker$Mathews))
# No the above measures are not enough to check the consistency
# Philip is more consistent than Mathew 

##solution 5 ------------------------------------------------------------------------
x = c(8,6,2,4,6,6,8,10,8)
table(x)
names(which.max(table(x)))

fruits = c("apples","apples","apples","grapes","mangoes")
table(fruits)
names(which.max(table(fruits)))

## solution 6------------------------------------------------------------------------
scores = c(11, 7.5, 8.5, 10, 10, 10.5, 5.5, 10, 9, 9.5, 5.25, 8, 6.5, 10.5, 8.75, 0, 6, 6, 6.75,8.75, 0, 9.5, 7.5, 8.5, 7) 
range(scores)
sd(scores)
var(scores)
quartiles = quantile(x = scores,probs = c(0.25,0.5,0.75))
quartiles
quantile(scores)
IQR(scores)
boxplot(scores,ylab="scores",main="boxplot of scores ",col="green")

## solution 7------------------------------------------------------------------------
supplier1 = c(17,22,22,22,27)
supplier2=c(17,19,20,27,27)
range(supplier1)
range(supplier2)
mean(supplier1)
mean(supplier2)
sd(supplier1)
sd(supplier2)
# First supplier is more consistent

# solution 8------------------------------------------------------------------------
dataset <- c(1:100)
mean(dataset)
median(dataset)
a_vec <- c(12,13,15,32,24,53,45,78,91)
mean(a_vec)
median(a_vec)
b_rand <- seq(from=20, to=40, by=10)
mean(b_rand)
median(b_rand)
c_vec <- c(rep(1,10),rep(2,20),rep(3,30))
mean(c_vec)
median(c_vec)
