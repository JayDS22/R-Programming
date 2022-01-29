#----------------------------------Matrices-----------------------------
## 1. Creating Matrices
### SYNTAX: matrix(DATA, byrow = FALSE/TRUE, nrow= number, ncol=number)
#### DATA: Vectors, Vector combination, Sequence, Other numeric Data
#### byrow: If you want Elements to be filled  BY ROW first / BY COLUMN first
#### nrow: How many no. of rows? || ncol: How many no. of cols?
##### byrow: FALSE is Default
# (A)----Normal
matrix(1:12, byrow=TRUE, nrow=4)
matrix(1:16, byrow=FALSE, ncol=8)

# (B)----Matrix out of Vectors
goog <- c(234, 567, 888, 999, 709)
msft <- c(786, 912, 456, 175, 245)
dell <- c(890, 356, 236, 727, 192)

stock.vector <- c(goog, msft, dell)
stock.vector

stock.matrix <- matrix(stock.vector, byrow=FALSE, ncol=3)
stock.matrix
# ---- Name the Columns & Rows
## SYNTAX: colnames(mat_name) <- c(list of names) || rownames(mat_name) <- c(list of names)

days <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri')
companies <- c('goog', 'msft', 'dell')
colnames(stock.matrix) <- companies
rownames(stock.matrix) <- days

stock.matrix

# (C)-----Matrix Multiplication
mat.1 <- matrix(1:25, byrow=FALSE, nrow=5)
mat.2 <- matrix(26:50, byrow=TRUE, ncol=5)
result <- mat.1 %*% mat.2
result

# (D)-----Normal Matrix Arithematics(Element Wise)
mat.1 * 2
mat.1/2
mat.1 %% 2
mat.1 ^2
#-------------------------------------------------------------------------------
## 2. Matrix Operations 

### note: Mostly operations are similar to that of vectors, just specify (row OR col)
### SYNTAX: Sum || rowSums(matrix.name) ||  colSums(matrix.name)
          # Means|| rowMeans(matrix.name) ||  colMeans(matrix.name)
#### Other such matrix functions can be found in https://cran.r-project.org/doc/contrib/Short-refcard.pdf

#----(A) Write the stock code again for Google, Microsoft, Dell

goog <- c(234, 567, 888, 999, 709)
msft <- c(786, 912, 456, 175, 245)
dell <- c(890, 356, 236, 727, 192)

stock.v <- c(goog, msft, dell)
stock.mat <- matrix(stock.v, byrow=FALSE, ncol=3)
stock.mat

colnames(stock.mat) <- c("Goog", "MSFT", "Dell")
rownames(stock.mat) <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri')
stock.mat

#----(B) Add Extra Columns & Rows
## SYNTAX: (Add Row) || rbind(matrix.name, Vec.Row.name)
         # (Add Col) || cbind(matrix.name, Vec.Col.name)

FB <- c(567, 892, 722, 117, 982)
matrix.colbind <- cbind(stock.mat, FB)
matrix.colbind

Sat <- c(273, 182, 988, 100)
matrix.r <- rbind(stock.mat, Sat)
matrix.r

#----(C) Matrix Operations
rowSums(matrix.r)
colSums(matrix.r)

rowMeans(matrix.r)
colMeans(matrix.r)

#----------------------------------------------------------------------------

# 3. Matrix Selection & Indexing

mat <- matrix(1:50, byrow=F, ncol=5)
mat

mat[1,2]
mat[1,]
mat[,1]
mat[1:6, 3]

A <- mat[1:3, 2:4]
A
A -2 
A %*% A
A/A
A-A

#----------------------------------------------------------------------------

# 4. Categorical & Factor Matrices

# - Using "factor()" to create categorical Matrices
  # - CategoricalMatrices are of 2 types : (Ordinal & Nominal) 
    #- Ordinal : In Order (Temp-class, Grade-class etc...)
    #- Nominal : No Order (Normal list of categorical string variables)
##SYNTAX: factor(DATA, ordered=FALSE/TRUE, levels = c(list of order levels)

temp <- c("hot", "cold", "Damn hot", "Med", "cold", "hot", "hot", "Damn hot")
fact.temp <- factor(temp, ordered=TRUE, levels=c("cold", "Med", "hot", "Damn hot"))

##Sumaarize the Categorical Matrix / Vector using summary()
##SYNTAX: summary(matrix) || Gives summary of each item  & entire matrix as well
summary(fact.temp)
summary(temp)

#---------------------Excercise--------------------------------------------------------

# A
A <- c(1,2,3)
B <- c(4,5,6)
rbind(A,B)
# B
mat.e <- matrix(1:9, byrow=FALSE, nrow=3) 
mat.e
# C
is.matrix(mat.e)
# D
mat2 <- matrix(1:25, byrow=T, ncol=5)
mat2
# E
mat2[2:3, 2:3]
# F
mat2[4:5, 4:5]
# G
sum(mat2)
# H
??runif()
random.n <- runif(20, min = 1.798345, max= 94.459102)
mat.random <- matrix(random.n, byrow=FALSE, ncol=5)
mat.random
