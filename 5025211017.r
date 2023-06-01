library(BSDA)

#Nomer 1
#a
x <- c(78, 75, 67, 77, 70, 72, 78, 70, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 100, 100)

selisih <- y - x
standev <- sd(selisih)
print(standev)

#b
t.test(y, x, alternative="two.sided",paired=TRUE)$p.value

#c
t.test(y, x, paired = TRUE,conf.level = 0.95)

#Nomer2
library(BSDA)
mall <- 25000
n <- 100
mean_x <- 23500
sd_x <- 3000

zsum.test(mean.x = mean_x, sigma.x = sd_x, n.x = n, alternative = "greater",
          mu = mall, conf.level = 0.95)


#Nomer 3
#b

tsum.test(mean.x = 3.64, s.x = 1.67, n.x = 20, mean.y = 2.79, s.y = 1.5, 
          n.y = 27, alternative = "two.sided", var.equal = TRUE, conf.level = 0.95)

#C
tsum.test(mean.x = 3.64, s.x = 1.67, n.x = 20, mean.y = 2.79, s.y = 1.5, 
          n.y = 27, alternative = "two.sided", var.equal = TRUE, conf.level = 0.95)$statistic


#d
qt(p = 0.025, df = 44, lower.tail = TRUE)
qt(p = 0.025, df = 44, lower.tail = FALSE)

#Nomer 4
#a
data <- read.csv("E:/penting/KUULYEAH/semester4/Probstat/modul2/GTL.csv")
head(data,10)