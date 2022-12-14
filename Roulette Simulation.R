library(data.table)
library(ggplot2)
#Q1A
#Function Roulette returns earnings after n times you bet 
Roulette = function(n){
  #You lose $1 for each time you lose that bet
  #You get $1 for each time you win that bet
  #Probability to win and to lose a bet is 18/38 and 20/38 respectively
  Sampling <- sample(c(-1, 1), n, replace=TRUE, prob = c(10/19, 9/19))
  #So your final earnings is the sum of them, with the exception of your initial $1  
  Earnings <- sum(Sampling)
  return(Earnings)
}

print(Roulette(100)) 
print(Roulette(250))
print(Roulette(500)) 
print(Roulette(1000)) 
 
#Q1B

Distribution <- function(n){
  #Replicate 10000 times
  x <- replicate(10000, (Roulette(n)))
  # a. Compute the distribution
  Mean <- mean(x)
  StandardDev <- sd(x)
  print(paste("Mean is: ", Mean))
  print(paste("Standard Deviation is: ", StandardDev))
  Z_score <- round((x-Mean)/StandardDev, 3)
  # b. Plot a histogram on z score of earnings
  x <- data.table(Z_score= Z_score)
  hist <- ggplot(x, aes(x= Z_score)) +
    geom_histogram(aes(alpha=..count..), binwidth=0.3, fill = "darkgreen") +
    labs(x= "Z-Score", y="Frequency") +
    ggtitle("Histogram on Z-scores for Roulette earning simulations")
  print(hist)
  return (hist)
}

print("For n= 100: ")
Hist100 <- Distribution(100)
print("For n= 250: ")
Hist250 <- Distribution(250)
print("For n= 500: ")
Hist500 <- Distribution(500)
print("For n= 1000: ")
Hist1000 <- Distribution(1000)


