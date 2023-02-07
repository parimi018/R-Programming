x<-c(0.63, 0.49, 0.24, 0.57, 0.76, 0.89)
t<-ks.test(x,"punif")
print(t)
x<-c(7, 3, 2, 7, 5, 4, 9, 15, 6, 6, 1, 6, 8, 10, 12)
t<-ks.test(x,"pexp",5)
print(t)
x<-c(166, 141, 136, 153, 170, 162, 155, 146, 183, 157, 148, 132, 160, 175, 150)
t<-ks.test(x,"pnorm",mean=160,sd=10)
print(t)
print("Enter level of significance:")
alpa = scan()
if (t$p.value > alpha){
  print("Accepted")
}else{
  print("Rejected")
}
