#Nomor 1
#Diketahui
p = 0.2
x = 3
n = 10000

#1A
p <- dgeom(x, p)
p

#1B
mean(rgeom(n, prob = p) == 3)

#1C

#1D
hist(rgeom(n, prob = p), main = 'Histogram Distribusi Geometrik')

#1E
mean = 1 / p
variance = (1 - p) / (p ^ 2)

mean
variance

#Nomor 2
#Diketahui
n = 20
p = 0.2
x = 4

#2A
dbinom(x, n, p)

#2B
hist(rbinom(x, n, prob = p), xlab = "x", ylab = "Frekuensi", main = "Grafik Histogram")

#2C
mean = n * (p)
variance = n * p * (1 - p)

mean
variance

#Nomor 3
#Diketahui
n = 6
day = 365
lambda = 4.5

#3A
prob = dpois(n, lambda)
prob

#3B
hist(rpois(day, lambda), main = "Grafik Histogram Poisson")

#3C

#3D
mean = variance = lambda
mean
variance

#Nomor 4
#Diketahui
x = 2
v = 10
n = 100

#4A
p = dchisq(x, 10)
p

#4B
hist(rchisq(n, v), xlab = "X", ylab = "V", main = "Grafik Histogram Chi-Square")

#4C
mean = v
variance = 2 * v

mean
variance

#Nomor 5
#Diketahui

lambda = 3
n = 100

#5A
p = dexp(1, rate = 3, log = FALSE)
p

#5B
hist(rexp(10, rate = 3), main = "Grafik Histogram Untuk 10 Bilangan Randomm")
hist(rexp(100, rate = 3), main = "Grafik Histogram Untuk 100 Bilangan Randomm")
hist(rexp(1000, rate = 3), main = "Grafik Histogram Untuk 1000 Bilangan Randomm")
hist(rexp(10000, rate = 3), main = "Grafik Histogram Untuk 10000 Bilangan Randomm")

#5C
set.seed(1)
mean = mean(rexp(n, rate = 3))
variance = (sd(rexp(n, rate = lambda))) ^ 2

mean
variance

#Nomor 6
#Diketahui

n = 100
mean = 50
sd = 8
breaks = 50

#6A
n = 100
mean = 50
breaks = 50
sd = 8

set.seed(1)
P = dnorm(x = n, mean, sd)
data = rnorm(n, mean, sd)
m = mean(data)

x1 = floor(m)
x2 = ceiling(m)

z1 = (x1 - mean) / sd(data)
z2 = (x2 - mean) / sd(data)

P
z1
z2
plot(data)

#6B
hist(data, breaks, main = "5025211188_Akmal Ariq Romadhon_Probstat_A_DNhistogram")

#6C
set.seed(1)
variance = var(rnorm(n, mean, sd))

variance