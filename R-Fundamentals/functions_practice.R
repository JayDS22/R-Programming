#---------------------------Functions-----------------------------------------
## SYNTAX: name_of_func <- function(input1, input2=" ", ..) {
        #---Code execute
        #---return(result)}
### input =" " || Is a way to set Deafult Input while creating a function
### return() || Helps restore the "result" we returned in form of a variable

## Function groups together a set of statements, so that they can run more than once, whenever required.
#--------------------------------------------------
##------Add 2 Numbers
addition <- function(x,y){
  print(paste("Addition of 2 numbers:",x+y))
  resultt <- x^2 + 33 + y
  return(resultt)
}
addition
addition(22,33)
##-----Create a Matrix Function
matric <- function(n, m, v, z){
  formula <- matrix(n:m, byrow=FALSE, nrow=v, ncol=z)
  return(formula)
}
 matric(3,10)
matric(6,5) 
matric(1,25,5,5)
##-----Create a Function to return Fibonnaci Sequence
### It is addition of 2 consecutive numbers
fibonacci <- function(a){
  if(a==0){ return(0)}else if(a==1){return(1)}else{return(fibonacci(n-1)+fibonacci(n-2))}
}

a=as.integer(readline(prompt = "How many terms: ")) # use "as.integer()" to create a integer value input 
for (i in 0:(a-1)){
  print(fibonacci(i))}

##------------Functions Excercise------||IMP||
#------1)
prod <- function(a,b){
  print(a*b)
}
prod(3, 4)

#------2) a = number, v= vector of numbers || Check if a in v = TRUE || if a NOTIN v = FALSE
num_check <- function(a, v){
  for(i in v){
    if(i==a){ 
      return(TRUE)
      }
  }
  return(FALSE)
}

num_check(3,c(1,2,3))

#------3) a = number, v= vector of numbers || Check if a in v = count it's occurence
num_count <- function(a,v){
  count = 0
  for(i in v){
    if(i==a){ 
        count = count + 1
        }
  }
  return(count)
}

num_count(3, c(3,3))

#-------4) A function with 3 integer inputs || If any integer is divisible evenly by 3, don't count that in SUM of all 3 integers
sumall <- function(a,b,c){
  out <- c(0) #Initialized a "0" vector
  if(a%%3 != 0){
    out <- append(a,out)
  }
  if(b%%3 != 0){
    out <- append(b,out)
  }
  if(c%%3 != 0){
    out <- append(c,out)
  }
  return(sum(out))
}
sumall(1,9,9)
sumall(2,5,7)
sumall(8,9,2)

#-------5) Check if the number is prime or not || Prime nos. are evenly divisible by (1, itself) not anything else
prime_check <- function(n){
  if(num == 2){  # 2 is for sure PRIME
    return(TRUE)
  }else if(any(n%%2: (n-1) == 0)){ # Any number btwn divisible of 2 & (its Consecutive number == 0 OR ANY NUMBER == 0 )|| Not Prime
    return(FALSE)
  }else { return(TRUE)}
}
prime_check(3)


