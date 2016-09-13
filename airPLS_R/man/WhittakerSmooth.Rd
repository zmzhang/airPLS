\name{WhittakerSmooth}
\alias{WhittakerSmooth}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Whittaker Smoother}
\description{
  penalized least squares algorithm for background fitting
}
\usage{
WhittakerSmooth(x,w,lambda) 
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ raman spectrum }
  \item{w}{ binary masks (value of the mask is zero if a point belongs to peaks and one otherwise) }
  \item{lambda}{lambda is an adjustable parameter, it can be adjusted by user. The larger lambda is,  the smoother z will be }
  \item{differences}{ an integer indicating the order of the difference of penalties}
}


\value{
  the fitted vector
}


\author{Yizeng Liang ,Zhang Zhimin}

\keyword{WhittakerSmooth}
