#Vectors ----

x=1

x
print(x)
x=1:10
x
x2 <-3
x2
x3=c(1,4,6)
x3
class(x3)
class(x2)
y=rnorm(100,mean=60,sd=15)
y
hist(y)
plot(density(y))
print(y[seq(1,100,2)])
plot(y[seq(1,100,2)])
install.packages("dplyr")
?hist
hist(y,breaks=c(10,40,80,100))

#Matrix ----

data=round(rnorm(24,mean=40,sd=3))
trunc(99.99)
floor(c(15.4,15.7,-15.4))
(m1=matrix(data,nrow=3))
(m2=matrix(data, nrow = 3, byrow = T))
colSums(m1)
rowSums(m2)
m1[,c(1,4)]
df=mtcars
names(df)
?mtcars
df$cyl = factor(df$cyl)
str(df)
df[,c('cyl','vs','am','gear','carb')] = lapply(df[,c('cyl','vs','am','gear','carb')], factor)
table(df$cyl)
barplot(table(df$cyl),col=3:7)
barplot(table(df$gear),col=3:7)
table(df$gear,df$am,dnn=c('gear','am'))
barplot(table(df$gear,df$am,dnn=c('gear','am')))
aggregate(.~cyl,data=df,mean)
aggregate(cbind(mpg,wt) ~cyl,data=df,mean)

#Factors ----
set.seed(1234)

(gender= sample(c('M','F')))
(gender= sample(c('M','F'),size=100,replace=T))
table(gender)          
(gender= sample(c('M','F'),size=100,replace=T,prob=c(.7,.3)))
table(gender)  
prop.table(table(gender)  )
barplot(table(gender)  )
pie(table(gender)  )



#Grades

set.seed(1111)
grades=sample(c('A','B','C','D'),size = 100000,replace=T,prob = c(.4,.3,.2,.1))
table(grades)  
prop.table(table(grades))
barplot(table(grades))
grades2=factor(grades,ordered = T,levels = c('E','G','S','P'))

#dplyr ----
library(dplyr)
str(df)               
df%>% group_by(cyl,gear) %>% summarise(meanwt=mean(wt,na.rm = T),meanMPG = mean(mpg,na.rm = T))
df%>% group_by(cyl,gear) %>% summarise(meanwt=mean(wt,na.rm = T),n(),MaxHP=max(hp),meanMPG = mean(mpg,na.rm = T))
df %>% filter(mpg>25)
df %>% filter(mpg>25) %>% filter()
