#-- A)-------------- CSV Input/ Output
write.csv(mtcars, file="my.example.csv")
ex <- read.csv("my.example.csv")

#Post loading the CSV file, check the Class, Structure & Summary of the CSV file. 
#Post that you can use all the commands as per the type of data in a CSV file.
class(ex)
str(ex)
summary(ex)

#--B)----------------Excel I/O
## SYNTAX(To load XL file): library(readxl) || excel_sheets('file.name.xlsx')
## NOte: File should be saved on the path, where the R-Script is working
## SYNTAX(Read XL file): read_excel('file.name.xlsx', sheet = 'sheet.name')
## SYNTAX(Read XL file): read.xlsx('file.name.xlsx', sheet = 'sheet.name')
##---- sheet = Name of the specific sheet to see
###---1) Read& Extract Excel files
library(readxl)
excel_sheets('Sample-Sales-Data.xlsx')
df <- read_excel('Sample-Sales-Data.xlsx', sheet = "Sheet1")
head(df)
class(df)
## NOTE: Once you know the "Class" of the Data (Vector, Matrix, DF, etc..), all the formulas of that class can be easily applied
## SYNTAX (entire_workbook) <- lapply(excel_sheets("file.name.xlsx"), read_excel, path = "file.name.xlsx"))
#--- This Syntax uses lapply() function to give all the iterable values
#--- It extracts & shows the entire worrk book of the Excel File.
###---2) Read& Extract Entire Excel WorkSheet
entire.workbook <- lapply(excel_sheets('Sample-Sales-Data.xlsx'), read_excel, path="Sample-Sales-Data.xlsx")
entire.workbook

###---3)Write a Excel file
## SYNTAX(Write, Create a Excel File): library(xlsx) || write.xlsx(data, file='file.name.xlsx')
## data = Data Frame, Vectors list, Matrices etc....
dd <- matrix(1:20, byrow=FALSE, ncol=4)
library(xlsx)
write.xlsx(dd, file='new.xlsx')
read_excel('new.xlsx')

# 4) SQL-----I/O
install.packages("RODBC") 
# RODBC Example of syntax
library(RODBC)
#---SYNTAX
#myconn <-odbcConnect("Database_Name", uid="User_ID", pwd="password")
#dat <- sqlFetch(myconn, "Table_Name")
#querydat <- sqlQuery(myconn, "SELECT * FROM table")
#close(myconn)

