#rfsa_2.R
rm(list=ls())
setwd('~/pj/rfsa')
getwd()
sink()
sink('rfsa2_O.Rout', append=TRUE, split=TRUE)
dev.off()
#jpeg('rfsa_2_1.jpg')
#pdf('rfsa_2_1.pdf')
#dev.off()
# x <- installed.packages()
# x <- as.data.frame(x)
# y <- paste(x$Package,x$LibPath)
# y <- sort(y)
# head(y, 20)
# install.packages("dplyr")
# library(dplyr)
# y <- x %>% 
#   group_by(LibPath) %>%
#   summarize(Packages=n())
#  
sessionInfo()

(x <- c(3,4,5))
x
ls()
sum(x)
mean(x)
var(x)

capacity <- c(14,13,14,13,16,NA,NA,20,NA)
mean(capacity)
mean(capacity, na.rm = TRUE)
is.na(capacity)

?substr
substr('abcdefg', 2, 4)
substr("abcdefg",stop=4,start=2)
substr(stop=4, start=2,'abcdefg')

sumofsquares <- function(x,y,z){
  sumsq <- sum(c(x^2,y^2,z^2))
  return(sumsq)
}
a <- 2
b <- 3
c <- 4
sumofsquares(a,b,c)
a <- c(2,2)
b <- c(3,3)
c <- c(4,4)
a^2
b^2
c^2
a^2+b^2+c^2
c(a^2,b^2,c^2)
sumofsquares(a,b,c)

sumofsquares <- function(x,y,z){ # list the arguments
  sumsq <- sum(c(x^2,y^2,z^2)) # perform the operations
  return(sumsq) # return the value
}

x <- c(3,4,5)
stooges <- c("Moe","Larry", "Curly")
z <- c(T,F,T,F,T,T)
stooges[2]

(y <- seq(10,30))
(y <- 10:30)
w <- seq(10,30,2)
w
v <- seq(10,30,length=20)
v <- round(seq(10L,30L,length.out = 20))
v

trifecta <- c(6,8,2)
repeated_trifecta <- rep(trifecta,4)
repeated_trifecta

(x <- c(3,4,5))
(trifecta <- c(6,8,2))
repeated_trifecta <- rep(trifecta,x)
repeated_trifecta

num_matrix <- seq(5,100,5)
dim(num_matrix) <-c(5,4)
num_matrix
t(num_matrix)

num_matrix <- matrix(seq(5,100,5),nrow=5)
num_matrix

num_matrix <- matrix(seq(5,100,5),nrow=5,byrow=TRUE)
num_matrix
num_matrix[5,4]

x <- 2:3
x <- c(2:3)
x <- c(2,3)
x <- c(2L,4L)
x

eye_color <- c(2,2,4,1,5,5,5,6,1,3,6,3,1,4)
feye_color <- factor(eye_color)
levels(feye_color)
feye_color
levels(feye_color) <- c("amber","blue", "brown","gray","green",'hazel')
feye_color
empathy_score <- c(15,21,45,32,61,74,53,92,83,22,67,55,42,44)
#eyes_and_empathy <- list(eye_color,feye_color,empathy_score)
eyes_and_empathy <- list(eyes_code=eye_color, eyes_color=feye_color,
                         empathy=empathy_score)
eyes_and_empathy
eyes_and_empathy$empathy
str(eyes_and_empathy$empathy)
eyes_and_empathy$empathy[4]
edit(eyes_and_empathy)

mean(eyes_and_empathy$empathy)
(t.result <- t.test(eyes_and_empathy$empathy, mu = 30))
(t.result <- t.test(eyes_and_empathy$empathy, mu = 50))
t.result
str(t.result)
t.result$data.name
t.result$p.value
t.result$statistic

e <- data.frame(eye_color,feye_color,empathy_score)
e
e$empathy_score[7]
e[7,3]
e[7,]

edit(e)
e$feye_color=="blue"
e.blue <- e$empathy_score[e$feye_color=="blue"]
e.green <- e$empathy_score[e$feye_color=="green"]
e.hazel <- e$empathy_score[e$feye_color=="hazel"]
e.averages <- c(mean(e.blue),mean(e.green),mean(e.hazel))
e.amounts <- c(length(e.blue), length(e.green), length(e.hazel))
colors <- c("blue","green","hazel")
e.averages.frame <- data.frame(colors, e.averages, e.amounts)
e.averages.frame <- data.frame(color=colors,
                               average=e.averages, n=e.amounts)
e.averages.frame

?MASS
?openssl
?mean
