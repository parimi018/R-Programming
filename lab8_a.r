lo=c(1,3,5,7,9)
up=c(3,5,7,9,11)
x=(lo+up)/2
f=c(1,4,6,4,1)
fx=f*x
fx2=x*fx
sumf=sum(f)
sumfx=sum(fx)
sumfx2=sum(fx2)
mew=sumfx/sumf
x2=(f*((x-mew)^2))
sigma=(sum(x2)/sumf)^0.5
z1=(lo-mew)/sigma
z2=(up-mew)/sigma
f1=pnorm(z1)
f2=pnorm(z2)
px=round((f2-f1),4)
np=round((sumf*px),2)
fe=round((sumf*px))
td=data.frame(lo,up,x,f,fx,fx2,z1,z2,px,np,fe)
print(td)
x2=round(sum((f-np)^2/np),2)
print(paste("The calculated value is",x2))
tv=round(qchisq(0.95,df=length(x)-1),2)
print(paste("The table value is",tv))
if(x2<tv){
  print("Ho is accepted since calculated value < table value")
}else{
  print("Ho is rejected since calculated value > table value")
}