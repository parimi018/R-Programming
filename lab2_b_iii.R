d=read.csv("moviesdata.csv")
r=d$runtime[1:5]
n=d$title[1:5]
piepercent=round(100*r/sum(r),0)
pie(r,labels=piepercent,radius=0.8,main="Movie_runtime",col=rainbow(5))
legend("topright",cex=0.8,n,fill=rainbow(5))