library(dplyr)
library(psych)
miami<-read.csv(file.choose(),header=TRUE)
paris<-read.csv(file.choose(),header = T)
View(paris)
View(miami)
paris$X<-NULL
miami$X<-NULL
paris<-na.omit(paris)
miami<-na.omit(miami)
miami_price<-gsub("\\$","",miami$price)
View(miami_price)
plot(miami_price)
class(miami_price)
miami_price<-as.numeric(miami_price)
hist(miami_price)
plot(density(miami_price))
summary(miami_price)
str(miami)
mr<-lm(miami_price~reviews + rating + accommodates + extpeop + savwish + min_stay + secdep + cleanfee + weekfee +monthfee + bedroom + bathroom + beds,data=miami)
summary(mr)
mr<-lm(miami_price~ rating + accommodates + extpeop + savwish + min_stay + weekfee +monthfee + bedroom + bathroom + beds,data=miami)
mr<-lm(sentiment~reviews,data=miami)
mean(miami$rating)
for(i in 1:ncol(M.0897X1.miami)){
  M.0897X1.miami[is.na(M.0897X1.miami[,i]), i] <- mean(M.0897X1.miami[,i], na.rm = TRUE)
}
M.0897X1.miami$price<-as.numeric(M.0897X1.miami$price)
for(i in 1:ncol(M.0897X1.miami)){
  M.0897X1.miami[is.na(M.0897X1.miami[,i]), i] <- mean(M.0897X1.miami[,i], na.rm = TRUE)
}
View(M.0897X1.miami)

M.0897X1.miami$price<-mimi$price
mr<-lm(M.0897X1.miami$price~.,data=M.0897X1.miami)
miami$price<-gsub(",","",miami$price)
mk<-as.numeric(M.0897X1.miami$price)
M.0897X1.miami$price<-mk

