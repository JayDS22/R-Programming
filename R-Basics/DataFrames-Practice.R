#-- 1.) Data Frames-Basic
#------------------------

#Check out all avlb Built-In DataFrames - use "data()"
data()

#Basic DF Functions

### Create a DataFrame | Syntax: df_name <- data.frame(Datafile)
df <- data.frame(state.x77)
df
### Check Tail & Head | Syntax: tail(df_name) | head(df_name)
tail(df)
head(df)
### Check Explained summary of Data Frame | Syntax: summary(df_name)
summary(df)
### Check the Structure of DF
str(state.x77)
### Create a DF
days <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun')
temp <- c(22, 333, 44, 32, 44, 212, 99)
cities <- c('Montana', 'Delhi', 'Dubai', 'Helm', 'Rome', 'Indiana', 'Xeroz')
data.frame(days, temp, cities)
df.1 <- data.frame(days, temp, cities)
summary(df.1)

#-- 2.) Data Frames-Indexing & Selection
#---------------------------------------

## Indexing & Selection in DataFrames is similar to Matrix Operations
### Some made up weather data
days <- c('mon','tue','wed','thu','fri')
temp <- c(22.2,21,23,24.3,25)
rain <- c(TRUE, TRUE, FALSE, FALSE, TRUE)

### Pass in the vectors:
df <- data.frame(days,temp,rain)
df

### Index w.r.t. Row, Col
df[1,'rain']
df[1,]

### Index w.r.t. Condition
  #- SYNTAX: subset(df.name, subset = condition)
subset(df, subset = temp>=23)
subset(df, subset = rain==T)

### Index w.r.t. Order
  #- SYNTAX (Asc): sorted.ref_vec <- order( df_name['ref_vec']) || Ascending = Default
  #- SYNTAX(Desc): sorted.ref_vec <- order(- df_name['ref_vec']) || Descending = Default
sorted.temp <- order(df['temp'])
df[sorted.temp,]

sorted.tempp  <- order(-df['temp'])
df[sorted.tempp,]

sort.temp <- order(df$temp)
df[sort.temp,]



