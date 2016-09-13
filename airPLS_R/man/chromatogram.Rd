\name{chromatogram}
\alias{chromatogram}
\docType{data}
\title{HPLC chromatograms of Red Peony Root}   
\description{
Chromatograms, analyses of the Red Peony Root using HPLC-DAD, were selected to test proposed algorithm. 8 of Red Peony Root were collected from different producing area in China, and standard sample was also bought from National Institute For The Control Of Pharmaceutical and Biological Products. The experiments were performed at Chromap Co., Ltd Zhuhai, China. 2 UV spectra per second from 200 nm to 600 nm with a bandwidth of 4 nm resulted in 100 data points in each UV spectrum, then the "most peaks rich" wavelength was selected. 
}
\usage{data(chromatogram)}
\format{

  \describe{
    \item{\code{Xstd}}{standard chromatograms}
    \item{\code{X}}{matrix with 8 rows and 4000 columns}
    \item{\code{Xc}}{baseline corrected chromatograms of X}
    \item{\code{Xt}}{time axis, matrix with 1 rows and 4000 columns}
    \item{\code{score}}{score of PCA}
  }
}
\details{
The data set can be used for background-correct.
}
\examples{
main="Chromatograms of Red Peony Root"
xlab ="Retention time/Minutes"
ylab="Intensity/Arbitr. Units"

op <- par(mfrow = c(1,2))
plot(Xt,Xstd,type='l', main="Standard chromatogram of Red Peony Root",xlab=xlab,ylab=ylab)

plot(Xt,X[,1],type='l', main="Chromatograms of Red Peony Root",xlab=xlab,ylab=ylab,ylim=c(min(X),max(X)))
for(i in 2:nsample){
  lines(Xt,X[,i])
}



plot(Xt,Xc[,1],type='l', main="Corrected chromatograms of Red Peony Root",xlab=xlab,ylab=ylab,ylim=c(min(Xc),max(Xc)))
for(i in 2:nsample){
  lines(Xt,Xc[,i])
}
plot(score[1,1],score[1,2],xlab='PC1',ylab='PC2',pch=1,xlim=c(min(score[,1]),max(score[,1])),ylim=c(min(score[,2]),max(score[,2])))
text(score[1,1]+200,score[1,2]-100,'Standard')
points(score[2:9,1],score[2:9,2],pch=2)
points(score[10:17,1],score[10:17,2],pch=3)
for(i in 2:9){
  text(score[i,1]+200,score[i,2]-100,paste(i))
  text(score[i+8,1]+200,score[i+8,2]-100,paste(i))
}
}
\keyword{datasets}
