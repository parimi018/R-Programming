x<-c(36,29,44,28,40,50,39,47,33)
t<-wilcox.test(x,mu=35, alternative = "two.sided")
#x<- c(97.5,95.2,97.3,96,96.8,100.3,97.4,95.3,93.2,99.1,96.1,97.6,98.2,98.5,94.9)
#t<-wilcox.test(x,mu=98.5, alternative = "two.sided")
#x<-c(119,120,125,122,118,117,126,114,115,123,121,120,124,127,126)
#t<-wilcox.test(x,mu=120, alternative = "two.sided")
print(t)
print("Enter level of significance:")
alpa = scan()
if (t$p.value > alpha){
  print("Accepted")
}else{
  print("Rejected")
}