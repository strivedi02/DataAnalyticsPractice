rm(list=ls())

# addition
5 + 8

# subtraction
3 - 1 

# multiplication
3 * 5

# division
(5 + 7) / 2 

# Exponentiation (^)
5^2

# Modulo (%%)
10%%2

# Few Examples

2+3^2
(2+2)^4
sqrt(2) # Squareroot
log(100)  # default base is exp
log(x = 100, base = 10)


## ------------------------------------------------------------------------

# Multiply 13 with 9 and then subtract 10 and add 35?
# Divide this result by 42 
# What will be the final output?
(((13*9)-10)+35)/42

## ------------------------------------------------------------------------

#### R works with numerous data types. Some of the most basic types to get started are:
####  i) Decimals values like 4.5 are called numeric.
####  ii) Natural numbers like 4 are called integers. Integers are also numeric.
####  iii) Boolean values (TRUE or FALSE) are called logical.
####  iv) Text (or string) values are called characters

# Declare variables of different types
numeric <- 42
character <- "Universe"
logical <- FALSE
complex <- 10 + 11i

# Checkong of class
class(numeric)
class(character)
class(logical)
class(complex)


x <- 42
# Printong the variable x using print function

x 		   
print(x)


x <- 6
y = 10
z <- x+y
z



## ------------------------------------------------------------------------

# Assign a value to the variables my_apples and my_oranges
# Add these two variables together
# Create a variable my_fruit to store the sum of my_apples and my_oranges
my_apples <- 10
my_oranges <- 20
my_fruit <- my_apples + my_oranges

## ------------------------------------------------------------------------

# This : operator is used to create sequences.
x <- 1:20
x

y <- 20:1
y

cat(paste('','\n'))     # Adding newline separator

myseq1=seq(1,5, by=0.5)
myseq1

myseq2=seq(length=10, from=2, by=0.5)
myseq2

myseq3 <- seq(from = 0, to = 100, by = 10)
myseq3

# Replicating a number
rep1<-rep(1,10)
rep1

# Try with character object
rep2 <- rep("a",10)
rep2

num_vector <- c(1,2,3,4,5)                   # numeric vector
char_vector <- c("a","b","c","d","e")       # character vector
boolean_vector <- c(TRUE,FALSE,TRUE,FALSE,TRUE)  # logical vector

str(num_vector)       # to view the structure of the vector
length(num_vector)  # to get number of elements in the vector

str(char_vector)

str(bool_vector)

# Functions applied on vector
v4 <- c(10,9,8,7,6,5)
max(v4)
min(v4)
mean(v4)
v4[c(1,3)] # To get 1st and 3rd element from the vector v4
v4[c(2:5)] # To get 2nd to 5th element
v4[v4 > 8] # To get elements which are greater than 8

DOW <- c("04-Jun","05-Jun","06-Jun","07-Jun","08-Jun","09-Jun","10-Jun")
names(DOW) <- c("Mon","Tue","Wed","Thu","Fri","Sat","Sun") 
DOW

# Finding the sum of two vectors
A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)

# Take the sum of A_vector and B_vector
total_vector <- A_vector+B_vector
total_vector


## ------------------------------------------------------------------------

# Create a vector that contains numbers between the interval of 1 to 2500, with an increment of 6.
# Subset the first 50 elements of that vector

vec <- seq(from=1, to=2500, by=6)
vec_sub <- vec[c(1:50)]
vec_sub
## ------------------------------------------------------------------------
# Try creating following vectors -

# For poker_vector:
# On Monday you won $140
# Tuesday you lost $50
# Wednesday you won $20
# Thursday you lost $120
# Friday you won $240

# For roulette_vector:
# On Monday you lost $24
# Tuesday you lost $50
# Wednesday you won $100
# Thursday you lost $350
# Friday you won $10


# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)
sum(poker_vector)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24,-50,100,-350,10)
sum(roulette_vector)
# Find the poker and roulette winnings from Monday to Friday
winnings <- sum(poker_vector) + sum(roulette_vector)
winnings
## ------------------------------------------------------------------------

# Create a vector Player with two elements. Assign column names as "Name" and "Profession". Print the result.
player <- c(20,30)
names(player) <- c("Name","Profession")
player

## ------------------------------------------------------------------------

m1 <- matrix(1:6, nrow = 2, ncol = 3, byrow = TRUE)
m1

m2 <- matrix(1:6, nrow = 2, ncol = 3)  # here byrow=FALSE by default
m2

# using cbind and rbind

x <- c(1:3)
y <- c(10:12)

cbind(x, y)

rbind(x, y)

matrix_one <- matrix(c(1:9), nrow = 3, ncol = 3)

matrix_two <- matrix(c(10:18), nrow = 3, ncol = 3)

matrix_one

matrix_two

matrix_two - matrix_one

matrix_two * matrix_one

matrix_two %*% matrix_one


## ------------------------------------------------------------------------

matrix_example <- matrix(data = c(1:12), nrow = 3, ncol = 4)

matrix_example

matrix_example[3, 4]

## ------------------------------------------------------------------------

# Create a matrix with 4 rows and 3 columns having Months of the year e.g. "Jan", "Feb", etc. as values
# Create a matrix by combining following vectors using rbind and cbind -
## vector_sub <- c(1, 2, 3, 4)
## vector_sub2 <- c(8, 16, 24, 32)
months <- c("January","Feburary","March","April","May","June","July","August","September","October","November","December")
a_matrix <- matrix(months, nrow = 4, ncol = 3)
a_matrix

vector_sub <- c(1, 2, 3, 4)
vector_sub2 <- c(8, 16, 24, 32)
cbind(vector_sub,vector_sub2)
rbind(vector_sub,vector_sub2)
## ------------------------------------------------------------------------

x <- data.frame(Age = c(25,30,35,40), Working = c(T, T, F, F))
x
str(x)
nrow(x)
ncol(x)
names(x)
x$Age

y <- data.frame("SN" = 1:2, "Age" = c(21,15), "Name" = c("John","Dora"))
y

name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Creating a data frame from the vectors
planets_df <- data.frame(name,type,diameter,rotation,rings)
planets_df
planets_df[1,3]

# Printing data of entire fourth row
planets_df[4,]
# selecting the first three row elements of the second column

planets_df[1:3,2]

# using of the variable name

planets_df[1:3,"type"]

str(planets_df)

planets_df[1:5,"diameter"]

planets_df[,3]
planets_df[,"diameter"]

planets_df$diameter
planets_df[planets_df$name =='Jupiter','diameter']

# list demostration

first_list <- list("a" = c(1, 2, 3), "b" = TRUE, "c" = 20)
first_list
first_list[1]
first_list[2]
first_list[3]
my_vector <- c(1:10) 

my_matrix <- matrix(1:9, ncol = 3)

# Print out built-in R dataframe
mtcars
dim(mtcars)
str(mtcars)
my_df <- mtcars[1:10,]
my_list <- list(my_vector,my_matrix,my_df)
my_list
names(my_list) <- c("vec","mat","df")
my_list

# if statement
x = 1

if(x > 0){
  print("Positive Number")
}

# if else statement
x = -1
if(x > 0){
  print("Positive number")
} else {
  print("Negative number")
}

# Nested if else statement
x = 0
if (x < 0) {
  print("Negative number")
} else if (x > 0) {
  print("Positive number")
} else
  print("Zero")

# ifelse shorthand
a = c(5,7,2,9)
ifelse(a %% 2 == 0, "even", "odd")

# for loop
x = c(2, 5, 3, 9, 8, 11, 6)
count = 0
for (val in x) {
  if(val %% 2 == 0)  
    count = count+1
  print(count)
}

count

x %% 2

# while loop
i = 1
while (i < 6) {
  print(i)
  i = i+1
}

# break statement
x = 1:5

for (val in x) {
  if (val == 3){
    break
  }
  print(val)
}

# next statement
x = 1:5


## ------------------------------------------------------------------------
x <- factor(c("1", "2", "2", "1","1","2","1","2","2"))
x

category_vector <- c("Male", "Female", "Female", "Male", "Male")
typeof(category_vector)
factor_category_vector <- factor(category_vector)
factor_category_vector

temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order =TRUE,  levels = c("Low", "Medium", "High"))
factor_temperature_vector

summary(factor_temperature_vector)

# Create factor_speed_vector
#speed_vector <- c("medium", "slow", "slow", "medium", "fast")
#factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("slow", "medium", "fast"))
#factor_speed_vector

#Create factor_speed_vector
speed_vector <- c("medium", "slow", "slow", "medium", "fast")
factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("slow", "medium", "fast"))
factor_speed_vector
da2 <- factor_speed_vector[2]
da2
da5 <- factor_speed_vector[5]
da5
da2>da5