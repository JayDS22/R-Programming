#---- Lists in R-Programming---------------------------------
## Lists is an Organizational tool in R, used to save the Work having Different Data Structures.
## Vectors, Matrices, Data Frames, Subsets || All Kinds of Data-Structures can be stored in 1 list.

## 1.) Create a Normal list
#--------------------------
### SYNTAX: list(name.1 = DS.1, name.2 = DS.2, ....) || name.1, name.2 .. == Names of ELEMENTS in list |
### | DS.1, DS.2 == Data Structures (Vectors, Matrices, Data Frames, etc..,)

a <- c(1,2,3,4)
m <- matrix(1:10, byrow=FALSE, ncol= 5)
df <- data.frame(mtcars)
list.1 <- list(vec = a ,matrix = m ,Cars = df)
list.1

## 2.) Conditional formatting in list 
#-------------------------------------
### SYNTAX (Returns DS original form) : list.name$ele.name <- Cond.Assig. 
### SYNTAX (Returns List)|| list.name[index.no] <- Cond. Assig. || list.name[index.name] <- Cond.Assig.
list.1$matrix <- matrix(1:25, byrow=TRUE, nrow=5)
list.1
class(list.1)
class(list.1$matrix)

# NOTE: Multiple Lists can be combined using "c" keyword