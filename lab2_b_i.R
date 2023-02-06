w=c(94,45,55,70,10,80,25)
n=c("Shreyas","Sufiyan","Tayyab","Karthik","Neeraj","Roshan","Sathish")
pie(w,labels=n,radius=0.8,main="Weights",col=rainbow(7))
legend("topright",cex=0.8,n,fill=rainbow(7))