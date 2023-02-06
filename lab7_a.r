myfact=function(n){
  if(n==0){
    return(1)
  }
  return(n*myfact(n-1))
}
mybinomial=function(n,x,p,q){
  px=(myfact(n)/(myfact(n-x)*myfact(x)))*(p^x)*(q^(n-x))
  return(px)
}
x=c(0,1,2,3,4,5,6,7)
f=c(7,6,19,35,30,23,7,1)
fx=f*x
sumfx=sum(fx)
sumf=sum(f)
mean=sumfx/sumf
n=max(x)
p=mean/n
q=1-p
px=c()
for(i in x){
  px=c(px,mybinomial(n,i,p,q))
}
N=sumf
fe=N*px
a=((f-fe)^2)/fe
print(a)
s=0
for(i in a){
  s=s+i
}
td=data.frame(x,f,fx,px,fe)
print(td)
print(paste("Calculated value of  x2:",round(s,digits=4)))
tv=qchisq(.95,length(x))
print(paste("The table value of x2 at 5% L.O.S  n =",n,"is",tv) )
if(s>tv){
  print("X2 calculated > X2 Table ")
  print("Ho is rejected")
}else{
  print("X2 calculated < X2 Table")
  print("Ho is accept")
}
  