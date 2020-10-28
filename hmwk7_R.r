# program to get started on problem 3 in homework 7

# pdf will contain the exact pdf
x <- seq(-4,4,0.01)
pdf=((x**(-1/2))*exp(-x/2))/((2**.5)*(sqrt(3.1416)))

# number of samples we will generate, mean and stand dev for normal:
nsamples=100000
mean=0
sd=1

# the vector samples will contain the samples of the normal RV
samples <- rnorm(nsamples,mean,sd)
samples[samples>0] <- samples[samples>0]*samples[samples>0] ; samples
print("Program Works")
# plot a histogram of the samples using bins of with 0.2
print(max(samples))
print(min(samples))
hist(samples,freq=F,ylim=c(0,1.0),breaks=c(seq(-7.,25,0.2)))

# plot the pdf in red
lines(x,pdf,col="red",lwd=2)

