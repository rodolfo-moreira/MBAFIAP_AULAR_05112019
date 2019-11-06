#Criação de Vetores

a <- c(336524,20190415,894,48385,5423)
b <- a * 2
c <- b / 3
d <- c + a ^ 2
e <- sqrt(d)
ai <- c(a[5], a[4], a[3], a[2], a[1])

#criação de Matrizes

vetores <- c(a,b,c,d,e,ai)
vetores

m1 = matrix(vetores, nrow = 6, ncol = 5, byrow = TRUE)
m1

m2 = matrix(vetores, nrow = 5, ncol = 6, byrow = FALSE)
m2

m3 <- m1 * 0.1
m3

attitude
class(attitude)
dim(attitude)

m4 <- as.matrix(attitude[10:14, 1:6])
m4


# Operações

1+3
1:5 + 3
matrix(1:9, 3) + 3

1*2
1:5 * 2
matrix(1:9, 3) * 3


m5 = m1 * m3
m5

m6 = m3 * m1
m6

m7 = m1%*%m4
m7

m8 = m4%*%m1
m8

m5==m6
m7==m8

m1t = t(m1)
m1t

m8t = t(m8)
m8t

#a*x = b

set.seed(1)
amostra = c( "T", "R", "I", "A", "N", "G", "U", "L", "O", "S")
sample(x = amostra, replace = FALSE)
sample(x = amostra, replace = TRUE)
sample(x = amostra, size = 5)
sample(x = amostra, size = 10, replace = TRUE,
prob = c(1, 1, 5, 1, 1, 1, 1, 1, 1, 5))


#Amostra Linear

library(plotly)

?rnorm
set.seed(1)

b0 = 0.5
b1 = 2

x_amostra = rnorm(100,0,1)
x_amostra

y_amostra = rnorm(100,0,2)
y_amostra

y = b0 + b1 * x_amostra + y_amostra

plot_ly(x = x_amostra, y= y, type="scatter")
