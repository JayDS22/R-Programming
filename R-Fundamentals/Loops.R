# A) While Loops ------------------------------
x <- 4
y <- 30
## While loop runs till the condition is true
## paste, paste0 <- used to concatenate vectors, strings | In print function, mostly. | To paste together multiple variables
while(x<20 & y > 23){
  print(paste0('X is: ',x))
  print(paste0('Y is: ',y))
  x <- x+1
  y <- y-1
  if(x==10){
    print("Conditions not matching, so break the loop")
    break
  }
}
# B) For Loops --------------------------------
##  For loop iterates through the object as it runs throughout.
## For Loop for MATRIX Iteration, goes through Col. by Col.
jay <- c(1,2,3,4,5,6)
for(i in jay){
  result <- (i+3)*2
  print("i+3 = ")
  print(result)
  
}

mat <- matrix(1:25, byrow=FALSE, ncol=5)
print(mat)
for(num in mat){
  num <- num %% 2
  print("Remainder for each element of Matrix w.r.t. 2 : ")
  print(num)
}

## ----- NESTED FOR Loops
for(row in 1:nrow(mat)){
  for(col in 1:ncol(mat)){
    print(paste("The element at row:",row,"and col:",col,"is",mat[row,col]))
  }
}

