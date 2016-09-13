\name{simulate}
\alias{simulate}
\docType{data}
\title{simulated signals}   
\description{
Simulated chromatogram is the sum of Gaussian peaks, sinus curve baseline and random noise. 
}

\details{
	Simulated chromatogram is the sum of Gaussian peaks, sinus curve baseline and random noise. Reference one is denoted as R, whose noise is normally distributed, with variance 0.2. The one, to be aligned, is denoted as C, but normally distributed noise with variance 1. The peaks of C were shifted by 50 positions from peaks of R except the second peak. Both R and C are created in R language, and shown in Fig. 6(a).
}
\examples{
require(airPLS)
main="Simulated data"
xlab ="Sample intervals"
ylab="Intensity/Arbitr. Units"
#op <- par(mfrow = c(1,3))    
x=c(40*dnorm(seq(-5,5,by=0.1),sd=0.2),60*dnorm(seq(-5,5,by=0.1),sd=0.5),30*dnorm(seq(-5,5,by=0.1),sd=0.7),100*rep(0.001,100))
px=x
plot(x,type='l', main="pure signal",xlab=xlab,ylab=ylab)
x=x+40*rnorm(length(x))*0.01
max(x[1:100])
max(x[101:200])
max(x[201:300])
b=1:length(x)
yc=30*sin(1:length(x)/100)
yl=30*(1:length(x)/100)
xl=x+yl
xc=x+yc
max(xl[1:100])
max(xl[101:200])
max(xl[201:300])
max(xc[1:100])
max(xc[101:200])
max(xc[201:300])
plot(xl,type='l', main="pure signal with linear baseline and random noise",xlab=xlab,ylab=ylab)
plot(xc,type='l', main="pure signal with curve baseline and random noise",xlab=xlab,ylab=ylab)
op <- par(mfrow = c(1,2))  
plot(xl,type='l', main="correction result of linear baseline",xlab=xlab,ylab=ylab)
zl=airPLS(xl,10)
lines(xl-zl)

plot(xc,type='l', main="correction result of curved baseline",xlab=xlab,ylab=ylab)
zc=airPLS(xc,10)
lines(xc-zc)

}
\keyword{datasets}
