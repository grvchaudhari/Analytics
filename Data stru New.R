# data structures

#Vectors----
v1 = c(1,2,3,4,5)
class(v1)
v2=c('A','B','C','D','e')
v2
class(v2)
v3 =c(TRUE, FALSE, T, F)
class(v3)
v2[3]
v4=c(1,2, 'A')
v4
class(v4)
v5=c(TRUE, A, 1)
?rnorm
set.seed(100)
?set.seed
v6 = rnorm(100, mean=60, sd=15)
v7
v6
mean(v6)
sd(v6)
hist(v6)
hist(v6, breaks = 15)
hist(v6, breaks = 15, col=1:15)
hist(v6, freq = F, col='blue', main='', xlab='Marks', ylab='Dessity of counts')
lines(density(v6), col='yellow', lty=1, lwd=6)
title(main='PUMBA', sub='MBA++')


hist(v6, freq = T)

#Matrix----
?matrix
length(100:123)
m1 =matrix(100:123)
matrix(data = 100:123, nrow = 6, byrow = FALSE, dimnames= NULL)
(m2=matrix(c( 100:123), ncol = 4, byrow = T))
m2[1 , 2]
m2[3, 2]
m2[6, 4]
m2[, c(1,4)]
m2[c(2,3) ,]

m2[2:6, 1:3] # 2nd & 6 th row, 1st and 3rd col
colSums(m2)
colMeans(m2)
rowSums(m2)
rowMeans(m2)



#Array----
#x
?array
length(100:123)
4*3*2
(a1 = array(100:123, dim=c(4,3,2))) #4= row 3= column 2= times

(loc = paste('loc', 1:4, sep='-'))
(product = paste('p', 1:3, sep='@'))
(company = paste('company', 1:2, sep = '%'))
dimnames (a1) = list (loc, product, company)
a1
apply(a1, 1, sum) #row wise
apply(a1, 2, sum) #colunn wise
apply(a1, 3, sum) #matrix

apply(a1, c(1,2), sum)
apply(a1, c(2,3), sum)
apply(a1, c(1,3), sum)


#Data Frame----
(rollno = 1:30)
(sname = paste(' student',1:30, sep=''))
(gender = sample(c('M', 'F'), size=30, replace=T, prob=c(.7, .3)))
(marks = floor(runif(30, 50, 100))) 
# 30 students , 50 is minimum value, 100 is maximum floor = hence decimal value not there

df1= data.frame(rollno, sname, gender, marks)
head(df1, n=3)
tail(df1, n=4)

str(df1)
class(df1)
summary(df1)
df1
df1$rollno
df1$gender
df1[, c(1,4)]
df1[1:10 , ]
df1[ marks >50, ]
df1[ marks >85, ]
df1[ marks < 85, ]
df1[ marks >50 & gender== 'M' , ]
df1[ marks >85 & gender== 'F' , c(1,2) ]
names(df1)  #names of columns
dim(df1)   #Dimensions

aggregate(df1$marks, by=list(df1$gender), FUN=mean)
df2=aggregate(marks ~ gender, data=df1, FUN=mean)
pie(x=df2$marks)
barplot(df2$marks, col = 1:2)

#using dplyr package
library()

#Factors----
(grades = sample(c('A','B','C','D'), size=30, replace=T, prob=c(.3,.2,.4,.1)))
table(grades)
class(grades)
gradesF = factor(grades)
grades
gradesF
gradesF1= factor(grades, ordered=T)
gradesF1

gradesF2= factor(grades, ordered=T, levels = c('D','C', 'B', 'A'))
gradesF2

