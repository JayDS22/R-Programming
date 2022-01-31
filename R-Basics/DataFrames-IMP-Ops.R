#-------------------------------------------------------------------------------
# -- 1.) Data Frame - Fundamental Operations-(Part-I)
#----------------------------------------------------
### ----- A) Create a DF
#### - SYNTAX: letters() || To create vector with alphabets
#### Note: If you don't name the columns w.r.t. its vectors, R itself names it = vec_name
c1 <- 1:10
c2 <- letters[1:10]
dfn <- data.frame(col1=c1,col2=c2)
dfn

### ----- B) Export & Import Data || using CSV
#### - SYNTAX(To Export as CSV): write.csv(df_name, file='new_name')
#### - SYNTAX(To Import as CSV): read.csv('file_name')
#### Note: While saving a DF as CSV file, it saves "Index" as Column as well.
write.csv(dfn, file='saved.file.csv')
read.csv('saved.file.csv')

###----- C) Getting Info. about DataFrame
#### - SYNTAX(Names): rownames(df_name) || colnames(df_name)
#### - SYNTAX(numbers): nrow(df_name) || ncol(df_name)
nrow(dfn)
ncol(dfn)
colnames(dfn)
rownames(dfn)
str(dfn)
summary(dfn) 

### ----- D) Referencing Cells
#### - SYNTAX: df_name[[row.no, col.no]] || df_name[[row.name, col.name]] ||df_name[[row.seq, col.seq]]
#### - SYNTAX(Reassigning Values): df_name[[row, col]] <- new_value
#### ((IMP NOTE)): 2 Brackets [[]] > Returns' Vector Values
#### ((IMP NOTE)): 1 Bracket [] > Returns' entire DataFrame
dfn[[5,2]]
dfn[[6,1]] <- 22
dfn[[6,'col2']] <-44
dfn

### ----- E) Referencing Rows
#### - SYNTAX(single row) : df_name[row.no, ] || df_name[row.name, ] || df_name[row.seq, ]
#### - SYNTAX(Multiple rows): dfname[c(row1, row2,..)]
dfn[5,]
dfn[5,]<-33
dfn
### ----- F) Referencing Cols
#### - SYNTAX (Single Cols): df_name$col_name || df_name[ , col.no] || df_name[ , col.name] || df_name[ , col.seq ]
#### - SYNTAX(Multiple Cols): dfname[c(col1, col2,..)]
dfn[,2]
dfn[,1]<-93
dfn
### ----- G) Changing Row/Col Names
#### - SYNTAX: colnames(df_name)[Specific_Index] <- c(new.col.names)
#### - SYNTAX: rownames(df_name)[Specific_Index] <- c(new.row.names)
colnames(dfn) <- c('column1', 'column2')
dfn
rownames(dfn) <- c('X', 'Y', 'Sun', 'Moon', 'Star', 'Marvel', 'DC', 'Spidy', 'Bat', 'Man')
dfn
rownames(dfn)[2] <- 'Jay'
dfn

### ----- H) Add Rows/ Add Cols || ----------IMP------------
#### - SYNTAX(Add Row): new_df <- rbind(df_og, df_row_toadd)
#### - SYNTAX(Add Col): new_df <- cbind(df_og, df_col_toadd) || df.name$newcol <- condition OR Vector.list
df.2 <- data.frame(column1 = 222, column2= 'Lay')aaaaaaaaaaaa
df.2
df.rownew <- rbind(dfn, df.2)
df.rownew

df.3 <- data.frame(number=1:11)
df.3
df.colnew <- cbind(df.rownew, df.3)
df.colnew

df.rownew$new.col <- 2*df.rownew$column1
df.rownew

### ------ I) Exclude a Row/Col. || using (-ve sign) || Just for Presentation
#### SYNTAX(Exclude Row): df_name[ - row.no, ] 
#### SYNTAX(Exclude Col): df_name[ ,- col.no ] 
df.rownew[,-2]

### ------ J) Conditional Selection || (Very IMP)--------------------------------------
#-------------- for 1 Condition------------
#### - SYNTAX( Normal ): df.name[(df.name['col.name'] condition) , c(col.names.to.return) ]
#### - SYNTAX( Diff.): df.name[(df.name$col.name condition) , ]
#### NOTE: adding "," after conidtion is necessary to get columns in return w.r.t. cond.
#### NOTE: If we want all the columns in Return for the given condition, leave BLANK after ","
df.rownew[df.rownew['column1'] < 200, ]

#### Using Built in DF || Get O/P as Cars with MPG GREATER than 16.3
mtcars
mtcars[mtcars$mpg >16.3 , ]

#-------------- for Multiple Conditions------------ 
### Use "&" operator
#### - SYNTAX( Normal ): df.name[(df.name['col.name'] condition) & (df.name['col.name'] condition) , c(col.names.to.return) ]
#### - SYNTAX( Diff.): df.name[(df.name$col.name condition) & (df.name$col.name condition) ,  c(col.names.to.return)]
mtcars[(mtcars$mpg > 15.9) & (mtcars['cyl'] == 6) , ]
mtcars[(mtcars$mpg > 15.9) & (mtcars['cyl'] == 6) , c('mpg', 'cyl', 'hp')]

#-------------Conditional Slection using "SUBSET()" func.--------------(IMP)
#### SYNTAX: subset(data.frame, cond.1 & cond.2 & ....)
#### Addvantage(Subset) : Don't have to call out DF name again and again
subset(mtcars, mpg>15.6 & cyl==6)

### ------ I) Dealing with Missing Data || (Very IMP)-----------------------------------
#### SYNTAX(To Check & Return for each)          : is.na(df.name['col.name']) || gives BOOL values for all places in DF
#### SYNTAX(To Check & Return overall)(ShortCut) : any(is.na(df.name['col.name'])) || gives OVERALL BOOL value for all places in DF
#### NOTE: using "any" gives us  TRUE == if any null present in entire Data
                               # FALSE == if entire Data is Not Null
is.na(mtcars)
any(is.na(mtcars$mpg))

#### NOTE: Can use "<-" assignment operator to replace Null values in DF/ Col./On a definite place
#------------------------------------------------------------------------------------------

#-----------------------Excercise----------------------------------------------------------
#-1
Age <- c(22,25,26)
Weight <- c(150, 165, 120)
Sex <- c('M', 'M', 'F')
dff <- data.frame(Age, Weight, Sex)
dff
rownames(dff) <- c('Sam', 'Frank', 'Amy')
dff

#-2 - SYNTAX (Check if Table = DF)
is.data.frame(mtcars)
#-3 - SYNTAX (Convert Matrix to DF)
mat <- matrix(1:25,nrow = 5)
as.data.frame(mat)
#-4 
df.0 <- mtcars
df.0
#-5
head(df.0)
#-6
mean(df.0$mpg)
#-7
df.0[df.0$cyl == 6,]
#-8
df.0[c('am', 'gear', 'carb')]
#-9 || Create a col 'performance' == hp/wt || Add that col to 'mtcars' DF
performance <- df.0$hp/df.0$wt
performance
df.0.new <- cbind(df.0, performance)
head(df.0.new)
#-10 || Round of One Column to 2 Decimals
df.0.new$performance <- round(df.0.new$performance, 2)
df.0.new
#-11 || Create a DF having that condition, > Find Avg MPG for it.
df.avg.mpg <- df.0.new[df.0.new$hp > 100 & df.0.new$wt > 2.5,]
df.avg.mpg
mean(df.avg.mpg$mpg)
#-12 || MPG of Hornet Sportabout 
df.0.new['Hornet Sportabout', 'mpg']
