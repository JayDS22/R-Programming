#------------------------Date & TimeStamps--------------------------------------
Sys.Date() #Check Today's Date 

dt <- "1990-10-11"
class(dt) # Currently as dt is in "" == Character

as.Date(dt)
class(dt) 

# SYNTAX(Converted Char => Date) 

## || as.Date("Date", format="%b-%d-%y") || format > To set up FORMAT as per your DATE input
## || strptime("Time", format="%H:%M:%S") || format > To set up FORMAT as per your TIME input

### NOTE: The delimeters' keep changing in FORMAT, as per the given INPUT
### NOTE: It takes System Current date & Time zone automatically, while using STRPTIME

#--------DATE

## %d => Day of the Month(Decimal) || %m => Month(Decimal) || %b => Month (Abbreviated) || %B => Month (Full Name)
## %y => year(2 digit) || %Y => year(4 digit)

#--------TIME

## %H => Hours || %M => Minutes || %S => Seconds

## help(strptime) /\\ used to Check the %CODES for TIME-SERIES Analysis



dt.1 <- "Nov-21-12"
as.Date(dt.1, format = "%b-%d-%y")

dt.2 <- "June,01,24"
as.Date(dt.2, format = "%B,%d,%y")

help(strptime)

strptime("11:02:30", format="%H:%M:%S")


