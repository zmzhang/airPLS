\name{raman}
\alias{raman}
\docType{data}
\title{Raman spectra of Prednisone Acetate Tablets}   
\description{
Prednisone Acetate Tablets (PAT) were collected from ten different pharmaceutical factories, which were analyzed by BWTEK BTC112 Raman spectrometer. Measurements were carried out using laser of 784.7nm wavelength for excitation. A thermoelectric cooled (TEC) linear charge-coupled device (CCD) arrays with 2048 elements was used for signal detection, which provided high stability and low dark counts. All the tablets are recorded in the same integration times of 5000ms to obtain comparable spectra. Then these Raman spectra are corrected to test the proposed background-correction algorithm. 
}
\usage{data(raman)}
\format{
  two matrix with 10 objects and 1715 variables and a wavenumber vector:
  \describe{
    \item{\code{X}}{matrix with 10 rows and 1715 columns}
    \item{\code{Xc}}{baseline corrected spectra of X}
    \item{\code{xaxis}}{matrix with 1 rows and 1715 columns}
  }
}
\details{
The data set can be used for background-correct.
}
\examples{
nsample=ncol(X)
main="Raman spectra of Prednisone acetate tablets"
xlab = expression("Wavenumber / cm"^-1)
ylab="Raman Intensity/Arbitr. Units"

cl=gray(seq(0,4.5,by=0.5) /nsample)
plot(xaxis,Xc[,1],type='l',col=cl[1], main="The baseline correction result of Raman spectra",xlab=xlab,ylab=ylab,ylim=c(min(c(Xc,X)),max(c(Xc,X))))
for(i in 2:nsample){
  lines(xaxis,Xc[,i],col=cl[i])
}
for(i in 1:nsample){
  lines(xaxis,X[,i],col=cl[i],lty=3)
}
legend(10300, 22000, c("original","corrected"),
       text.col = "black", lty = c(3, 1))
       
library(fields)
x11()
image.plot(legend.only = TRUE, zlim = c(1, 10),
            col = cl)

plot(score[1,1],score[1,2],xlab='PC1',ylab='PC2',pch=1,xlim=c(-600000,100000),ylim=c(-30000,40000))
for(i in 2:10){
  points(score[i,1],score[i,2])
}
for(i in 11:20){
  points(score[i,1],score[i,2],pch=2)
}
legend(-600000, 40000, c("original","corrected"),
       text.col = "black", pch = c(1, 2))
       
       
       
a=cbind(X,Xc)
ad=diff(a)
svda=svd(t(a))
svdad=svd(t(ad))
scorea=svda$u%*%diag(svda$d)
scoread=svdad$u%*%diag(svdad$d)
svda$d/sum(svda$d)
svdad$d/sum(svdad$d)

scoread=data.frame(PC1=scoread[,1],PC2=scoread[,2],PC3=scoread[,3],PC4=scoread[,4])
pairs(scoread,
pch = paste(c(0:9,0:9)),col=c(rep('black',10),rep(grey(0.5),10)))
}
\keyword{datasets}
