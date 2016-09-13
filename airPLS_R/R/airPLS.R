WhittakerSmooth <- function(x,w,lambda,differences=1) {
  x=matrix(x,nrow = 1, ncol=length(x))
  L=length(x)
  E=spMatrix(L,L,i=seq(1,L),j=seq(1,L),rep(1,L))
  D=as(diff(E,1,differences),"dgCMatrix")
  W=as(spMatrix(L,L,i=seq(1,L),j=seq(1,L),w),"dgCMatrix")
  background=solve((W+lambda*t(D)%*%D),t((w*x)));
  return(as.vector(background))
 }
 
airPLS <- function(x,lambda=10,differences=1, itermax=20){
  
  x = as.vector(x)
  m = length(x)
  w = rep(1,m)
  control = 1
  i = 1
  while(control==1){
     z = WhittakerSmooth(x,w,lambda,differences)
     d = x-z
     sum_smaller = abs(sum(d[d<0])) 
     if(sum_smaller<0.001*sum(abs(x))||i==itermax)
     {
      control = 0
     }
     w[d>=0] = 0
     w[d<0] = exp(i*abs(d[d<0])/sum_smaller)
     w[1] = exp(i*max(d[d<0])/sum_smaller)
     w[m] = exp(i*max(d[d<0])/sum_smaller)
     i=i+1
  }
  return(z) 
}