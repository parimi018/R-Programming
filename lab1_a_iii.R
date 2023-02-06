data=read.csv("moviesdata.csv")
title=data$title[1:5]
run=data$runtime[1:5]
barplot(run,xlab="Movie titles",ylab="Movie Runtime",names.arg=title,main="Movies_Runtime",col=rainbow(5))
legend("topright",fill=rainbow(5),title,cex=0.5)
