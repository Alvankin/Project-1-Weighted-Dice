die <- 1:6
dice <- sample(die, size = 2, replace = TRUE)
sum(dice)

roll <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}

roll2 <- function(bones) {
  dice <- sample(bones, size = 2, replace = TRUE)
  sum(dice)
}

install.packages("ggplot2")
library("ggplot2")
qplot

x <- c(-1,-0.8,-0.6,-0.4,-0.2, 0, 0.2, 0.4, 0.6, 0.8, 1)
y <- x ^ 3
qplot(x, y)

x <- c(1, 2, 2, 2, 3, 3)
qplot(x, binwidth = 1)

x2 <- c(1, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 4)
qplot(x2, binwidth = 1)

replicate(3, 1 + 1)
rolls <- replicate(10000, roll())
qplot(rolls, binwidth = 1)

?sample

roll3 <- function() {
  die <- 1:6
  dice <-
    sample(
      die,
      size = 2,
      replace = TRUE,
      prob = c(1 / 8, 1 / 8, 1 / 8, 1 / 8, 1 / 8, 3 / 8))
  sum(dice)    
}

rolls3 <-replicate(10000,roll3())
qplot(rolls3, binwidth = 1)
