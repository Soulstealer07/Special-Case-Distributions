# A special case of Gamma 

# Degrees of freedom in chi square
v<-10
par(mfrow=c(2,1))
chi<-dchisq(v, df = 1:100)
density(chi, col="blue")
plot(chi,col="blue",xlab="Random Chi Square Variable",main="X1,..,Xn ~ X^2(v=10)")
#Chi Square transformation to Gamma distribution scale and shape parameters
gamma_density <- dgamma(x=1:100,shape=v/2,scale=2,xlab="random gamma variable",main="X1,.....,Xn ~ Gamma (v/2,2)")
plot(rgamma,col="green",xlab="Random Gamma Variables",main="X1,...,Xn ~ Gamma(Shape = v/2,Sclae = 2")

# Generate a T distribution from 1000 random chi square variables and 1000 standard normal variables

par(mfrow=c(1,1))
#1000 random standard Normal variables
rstand_norm<-rnorm(1000,mean=0,sd=1)
#1000 chi square random variables with 3 degrees of freedom
chi_rand <- rchisq(1:1000,df=3)

square_chi_rand<-sqrt(chi_rand/3)

t<-rstand_norm/square_chi_rand
max<-max(t)
min<-min(t)
class(min)
max

#This is X1,....,Xn ~ T(df=3)
hist(t,breaks=seq(-17,11,.1),col="green")


