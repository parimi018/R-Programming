data=read.csv("moviesdata.csv")
t=data$runtime[1:10]
hist(t,xlab="Runtime",ylab="frequency of runtime",main="Movie_runtime",col="yellow",border="blue",xlim=c(80,100),ylim=c(0,3),breaks=5)

