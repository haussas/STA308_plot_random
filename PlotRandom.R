## PlotRandom.R
##
## Purpose: a function that will generate a random sample
##          of normal deviates (values), plot a histogram, and provide the mean,
##          standard deviation, and generated values

## Stuff from last time...
plotRandomD <- function(numpts=100) {
  hist(rnorm(numpts))
}

plotRandomD()

#########################

## Let's build in more flexibility for our function:
plotrannorm <- function(numpts=1000, mu=24, sigma=3, numbins=15,
                        title="My histogram, Oct 14 2022",
                        meanColor="red", seed=8675309) {
  set.seed(seed)
  rand_x <- rnorm(numpts, mean=mu, sd=sigma)
  mean_x <- mean(rand_x)
  hist(rand_x, breaks=numbins, main=title)
  abline(v=mean_x, col=meanColor)
  list(Mean_X = mean_x, StdDev_X = sd(rand_x), Random_Values = rand_x)
}

plotrannorm()
