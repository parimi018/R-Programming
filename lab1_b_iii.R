data=read.csv("moviesdata.csv")
v=data$imdb_num_votes[1:6]
plot(v,type="o",xlab="Movie no",ylab="No of votes",main="Movie_votes",col="red")