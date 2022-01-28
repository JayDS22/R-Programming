#Basics
print('Gulwalani Jay is Wrong')
print('Guwalani Jay is Right')
2+3
77%%8
jay <- (33 + 44)/12.44;

jay
class(12)

#Vectors
vec <- c(1,2,"Jay")
vecx <- c(1,2,3,4)
temps <- c(66, 77, 88, 99, 11, 22, 33)
temps
#Provide Days to this Tempratures
#Syntax (Combining Values of 2 vectors): 
# names(vector_to) <- c(list of names)
days(temps) <- c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun")
temps

#Basic operations in Vectors
v1 <- c(1,2,3)
v2 <- c(3,4,9)

#Addition
v1 + v2
#Subtraction 
v1 - v2
#Multiplication
v1*v2
#Division
v1/v2
#Modulus
v1%%v2
#Functions w.r.t Vector Operations
sum(v1)
prod(v2)
max(v2)
min(v2)
var(v2)
sd(v2)

#Comparision 
v1 > v2
12 == 13
12 != 13

#Slicing & Indexing 
## In R, while slicing Last Indexed element is also included
## In R, Index starts from 1, In Python it starts from 0
v1[1]
v2[1:3]
v2[1:2]
v1[c(1,3)]

## Indexing with Names
names(v2) <- c('Jay', 'Bay', 'Hay')
v2['Bay']
## Calling out in Order
v2[c('Bay', 'Jay', 'Hay')]

v2
v2 > 2
v2[1:2]>6
v2[c(1,3)]> 6

#Changing the element value
v2[1] <- 33
v2

#Creating an Instant Filter
filter.arr <- v2[1:3]> 4
v2[filter.arr]

#-------------Exercise-------------------------------------

## A
2^5

## B
stock.prices <- c(23,27,23,21,34)
stock.prices
## C
names(stock.prices) <- c('Mon', 'Tue', 'Wed', 'Thru', 'Fri')
stock.prices
## D
mean(stock.prices)
## E
over.23 <- stock.prices > 23
over.23
## F
over.23 <- stock.prices[c('Tue', 'Fri')]
over.23

## G
max.price <- stock.prices == max(stock.prices)
max.price
stock.prices[max.price]

stock.prices[stock.prices == max(stock.prices)]
