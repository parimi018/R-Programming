myfact=function(n){
  if(n==0){
    return(1)
  }
  return(n*myfact(n-1))
}
mypoisson=function(l,x){
  px=((exp(-l))*(l^x))/myfact(x)
  return(px)
}
x=c(0,1,2,3,4,5,6,7,8)
f=c(103,143,98,42,8,4,2,0,0)
fx=f*x
sumfx=sum(fx)
sumf=sum(f)
l=sumfx/sumf
px=c()
for(i in x){
  px=c(px,mypoisson(l,i))
}
N=sumf
fe=N*px
a=((f-fe)^2)/fe
s=0
for(i in a){
  s=s+i
}
td=data.frame(x,f,fx,px,fe)
print(td)
print(paste("Calculated value of  x2:",round(s,digits=4)))
tv=qchisq(.95,length(x))
print(paste("The table value of x2 at 5% L.O.S  n =",n,"is",tv) )
if(s<tv){
  print("X2 calculated < X2 Table ")
  print("Ho is accepted")
}else{
  print("X2 calculated > X2 Table")
  print("Ho is rejected")
}
