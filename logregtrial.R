set.seed(34)

library(caTools)


mtcars
dim(mtcars)
s=sample.split(mtcars$am,SplitRatio = .7)
table(s)
train_MT=subset(mtcars,s==T)
test_MT=subset(mtcars,s==F)  
table(train_MT$am)
table(test_MT$am)

prop.table(table(train_MT$am))
prop.table(table(test_MT$am))

#Another method for partition 

library(caret)
intrain <- createDataPartition(y=factor(mtcars$am),p=0.7,list=F)
intrain
training<-mtcars[intrain,]
testing<-mtcars[-intrain,]
mtcars[-intrain,]
training



#Simple Method
sample(1:nrow(mtcars),size=.7*nrow(mtcars))


#4th Method
library(dplyr)
mtcars %>% sample_n(22) 
mtcars %>% sample_frac(.7)
sample_frac(mtcars,.7)
