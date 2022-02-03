#-(A)-----:-Built-In Features----------------------------------------------------------------------------------
#seq() : Create Sequences || SYNTAX: seq(start.value, end.value, by=stepsize.value)
#sort() : Sort a Vector || SYNTAX: sort(vector.name, decreasing=TRUE/FALSE) || Default is ASC order
#rev(): Reverse elements in the object || rev(object.name)
#str(): Shows structure of the object || str(object.name)
#append(): Merge objects together( Works on Vectors & lists together) || SYNTAX: append(obj.1, obj.2, ...)
# Checking DATA TYPES & Converting it. || CHECK: is.datatype(obj.name) || CONVERT: as.datatype(obj.name)

s <- seq(1,30,by=3)
sort(s)
rev(s)
sort(s, decreasing = TRUE)
str(s)
summary(s)
a <- c(1,2,5,6,9,001,007,8)
sum(sort(append(s,a)))

is.vector(a)
a <- as.matrix(a, ncol=2)
str(a)
class(a)

#-(B)---------Apply() & Other Built-IN func. (lapply(), sapply())-------------------------------------------------------------------------
##-- SYNTAX(To select random Sample values): sample(value.range, n.ret.value) || n.ret.value = number of random value to return as a sample for a given value range


###--EG-1
v <- c(1,2,3,4,5)

addrand <- function(x){
  ran <- sample(1:100, 1)
  return(x+ran)
}

#### ---- Added Random
addrand(3)
#### ---- Apply "addrand" func. to "v" || SYNTAX(List Apply, with Single INPUT): lapply(obj.name, FUNCTION) || Applies function to all elemnts of the given object
#### Gives output in LIST format
result.l <- lapply(v, addrand)
result.l
#### ---- Apply "addrand" func. to "v" || SYNTAX(Simple Apply, with Single INPUT): sapply(obj.name, FUNCTION) || Applies function to all elemnts of the given object
#### Gives output in Vector/Matrix format
result.s <- sapply(v, addrand)
result.s

#### ---- SYNTAX(lapply, sapply with Multiple Inputs): sapply(obj.name, FUNC., input2 = value, input3= value....) e
#### Coz, 1 Input func. is automatically considered, so we have to consider other inputs in the SYNTAX after the FUNCTION is called out
m <- 1:5
add_choice <- function(numb, choice){
  return(numb+choice)
}
print(sapply(m,add_choice,choice=100))

#--(C)---Anonymous Function---------------------------------------------------------------------------
## Similar to LAMBDA func. in Python || To create a instant function w/o naming it as a variable
### SYNTAX(Anonymous fun): function(input){return.value or CODE}

y <- 1:25
times2 <- sapply(y, function(number){number*2})
print(times2)

#--(D)---MATH Functions--------------------------------------------------------------------------------

## abs(): Computes the Absolute value 
## sum()
## mean()
## round(values, digit) || digit = numbers you want post decimal point

#--(E)---Regualar Expressions-------------------------------------------------------------------------

##  Pattern Searching
## grepl('pattern', object) / Gives TRUE-FALSE as LOgical Outputs || grep('pattern', object) / Gives Index.value where the "Pattern" is avlb in "Object" 
txt <- c("Hi" , "my name", "is Jay", "the best Guwalani", "ever born")
grepl("Jay",txt)
grep("J",txt)



