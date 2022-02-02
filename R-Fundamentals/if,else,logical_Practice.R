# A) Logical Operators
# --------- &(AND), |(OR), !(NOT)
x <- 21 
y <- 33
(y>=40) & (y<=34)
x < 21 | x >21
df <- mtcars
df[(df$mpg > 20) & (df$cyl == 6), ]

# B) If-Else Statements
# ---------
## NOTE:There should be no gap after {} between the functions(if, else if, else) otherwise it will cause an error
#----------------
hot <- FALSE
temp <- 80

if(temp > 80){
  print("Very Hot")
}else if ( temp <= 80 & temp >=50){
  print("Not very Hot")
}else{
  print("Not enough Data")
}

## ----- Conditional Statements Excercise
x <- 5
if(x%%2==0){
  print("Even")
}else{
  print("Not Even")}

x<- matrix()
if(is.matrix(x)){
    print("x is a Matrix")
}else{
    print("x is not a matrix")
}
#Print Max out of 3 numbers
x<- c(20,10,1)
if(x[1] > x[2] & x[1] > x[3]){
  print (x[1])
}else if(x[2]>x[3]){
  print (x[2])
}else{
  print (x[3])
}
#Create a script that given a numeric vector x with a length 3, will print out the order from high to low
## Create 1 if,else for managing First & Second
x <- c(3,7,1)
if(x[1]>x[2]){
  fir <- x[1]
  sec <- x[2]
}else{
  fir <- x[2]
  sec <- x[1]
}
## Create 2nd if,else for managing the thrid w.r.t. fir & sec
if(x[3] > fir & x[3] > sec){
  thi <- sec 
  sec <- fir
  fir <- x[3]
}else if(x[3]< fir & x[3] < sec){
  thi <- x[3]
}else{
  thi <- sec  
  sec <- x[3]
}
print(paste(fir, sec, thi))

## C) - Test the Datatype & Data Structures of the particular value/vector etc..
### SYNTAX: is.datastructure(element.to.check) || is.datatype(element.to.check)
is.logical(TRUE)
is.list(c(12,13,44))
is.vector(c(12,13,44))  

