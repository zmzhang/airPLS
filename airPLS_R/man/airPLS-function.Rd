\name{airPLS-function}
\alias{airPLS-function}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{adaptive iteratively reweighted penalized least squares}
\description{
 adaptive iteratively reweighted penalized least squares for baseline fitting
}
\usage{
airPLS(x,lambda=10,differences=1, itermax=20)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ spectrum }
  \item{lambda}{lambda is an adjustable parameter, it can be adjusted by user. The larger lambda is,  the smoother z will be }
  \item{differences}{ an integer indicating the order of the difference of penalties}
}


\value{
  the fitted vector
}


\author{Yizeng Liang ,Zhang Zhimin}

\seealso{\code{\link{WhittakerSmooth}}}

\keyword{airPLS-function}
