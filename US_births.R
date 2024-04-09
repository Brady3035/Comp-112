## using data from a package

## install the package containing the data (this only needs to be done once)

install.packages("fivethirtyeight")

## load the package into the current R session (this needs to be done each session)

library(fivethirtyeight)

## display the datasets available from the "fivethirtyeight" package

data(package = "fivethirtyeight")

## what is the internal structure of the R object US_births_1994_2003

str(US_births_1994_2003)

## show the first few rows and columns of a dataframe

head(US_births_1994_2003)

## show the names of the columns (variables) of a dataframe

names(US_births_1994_2003)

## show the first 20 rows and all the columns of a dataframe

US_births_1994_2003[1:20,]

## show the first 10 rows and the 3rd and 5th columns of a dataframe

US_births_1994_2003[1:10,c(3,5)]

## make a subset of all rows in the table which are from 1995

Births1995<-US_births_1994_2003[US_births_1994_2003$year==1995,]

## make a subset of all rows in the table which are Tuesdays

Tuesdays<-US_births_1994_2003[US_births_1994_2003$day_of_week=="Tues",]
Wednesdays<-US_births_1994_2003[US_births_1994_2003$day_of_week=="Wed",]
Thursdays<-US_births_1994_2003[US_births_1994_2003$day_of_week=="Thurs",]
Fridays<-US_births_1994_2003[US_births_1994_2003$day_of_week=="Fri",]
Saturdays<-US_births_1994_2003[US_births_1994_2003$day_of_week=="Sat",]
Sundays<-US_births_1994_2003[US_births_1994_2003$day_of_week=="Sun",]
Mondays<-US_births_1994_2003[US_births_1994_2003$day_of_week=="Mon",]

## summarize the column “births” in the Tuesday table
summary(Mondays$births)
summary(Tuesdays$births)
summary(Wednesdays$births)
summary(Thursdays$births)
summary(Fridays$births)
summary(Saturdays$births)
summary(Sundays$births)