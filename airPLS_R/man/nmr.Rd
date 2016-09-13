\name{nmr}
\alias{nmr}
\docType{data}
\title{nuclear magnetic resonance dataset}   
\description{
nuclear magnetic resonance dataset
}
\usage{data(nmr)}
\format{

  \describe{
    \item{\code{y}}{nmr spectrum}
    \item{\code{z}}{corrected nmr spectrum}
    \item{\code{Z}}{correction steps}
  }
}
\details{
The data set can be used for background-correct.
}
\examples{
main="Baseline correction result of NMR signal"
xlab ="Channel"
ylab="Intensity/Arbitr. Units"
cl=gray(6:0/10)
plot(y,type='l', main=main,xlab=xlab,ylab=ylab,lty=2)
lines(z,lty=3)
lines(y-z,lty=1)
legend(12000, 100000000, c("original","baseline","corrected"),
       text.col = "black", lty = c(2, 3,1))

}
\keyword{datasets}
