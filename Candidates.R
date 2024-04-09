## Small DataFrame of Presidential Candidates
## before running the next set of commands  run install.packages("lubridate")
## and library(lubridate)

GivenName<-c("Donald","Joe","Nikki","Dean","Robert")
FamilyName<-c("Trump","Biden","Haley","Phillips","Kennedy")
CountryOfBirth<-c("USA","USA","USA","USA","USA")
CityOfBirth<-c("Queens, NY", "Scranton, PA","Bamberg, SC",
               "Saint Paul, MN","Washington, DC")
DOB<-c("1946-06-14","1942-11-20","1972-01-20","1969-01-20",
       "1954-01-17")
Candidates<-data.frame(GivenName,FamilyName,CountryOfBirth,
                       CityOfBirth,DOB)

Today<-as.Date("2024-01-23")

## Method 1 use difftime() command

## Note as.double removes the units of difftime which are specified here as days
AgeInDays<-difftime(Today,DOB,units="days")
Age<-as.double(AgeInDays)

## the floor function rounds any real number down to the next smallest integer
RoundDownAge<-floor(Age/365.25)

## Add column to existing dataframe
CandidatesI<-cbind(Candidates,RoundDownAge)

## Method 2 use interval() command from lubridate
Age<-interval(DOB,Today)/years(1)
RoundDownAge<-floor(Age)

CandidatesII<-cbind(Candidates,RoundDownAge)
