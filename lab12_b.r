x<-c(40,30,40,45,55,30)
y<-c(50,55,45,55,60,40)
t<-ks.test(x,y,paired=T)
print(t)
x<-c(59,68,44,71,63,46,69,54,48)
y<-c(50,36,62,52,70,41)
t<-ks.test(x,y,paired=F)
print(t)
print("Enter level of significance:")
alpa = scan()
if (t$p.value > alpha){
  print("Accepted")
}else{
  print("Rejected")
}
