#Dibutuhkan untuk fungsi "Closest"
require(DescTools)

mean = 45
sd = 5
n = 100

#No 1
rnorm_fixed <- function(n, mean, sd) {    # Create user-defined function
  as.vector(mean + sd * scale(rnorm(n)))
}
#Data acak
#randObs = rnorm(n, mean, sd)
randObs = rnorm_fixed(n, mean, sd)
randObs = sort(randObs)
#Mencari X1 dan X2
index = Closest(randObs, mean, which = TRUE, na.rm = FALSE)
if (randObs[index] < mean) {
  sprintf("%f(%d) is less than mean", randObs[index], index)
  X1 = randObs[index]
  X2 = randObs[index+1]
} else{
  sprintf("%f(%d) is more than mean", randObs[index], index)
  X2 = randObs[index]
  X1 = randObs[index-1]
}
#Nilai P(X1 <= x <= X2)
sprintf("Nilai P(%f <= x <= %f) score = %f", X1, X2, pnorm(X2, mean, sd) - pnorm(X1, mean, sd))
#z score
z1 = (X1 - mean)/sd
z2 = (X2 - mean)/sd
sprintf("Nilai P(%f <= z <= %f) score = %f", z1, z2, pnorm(z2, 0, 1) - pnorm(z1, 0, 1))
#Plotting distribusi acak dengan mean = 45 dan sd = 5
plot(randObs, dnorm(randObs, mean, sd), type = "l", ylim = c(0, 0.15), ylab = "", lwd = 2, col = "red")
#No 2
hist(dnorm(randObs, mean, sd), breaks = 50)
#No 3
sprintf("Nilai varians dari data adalah = %s", sd(randObs)^2)

