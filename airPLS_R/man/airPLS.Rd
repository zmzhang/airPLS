\name{airPLS}
\alias{airPLS}
\title{
Baseline correction using adaptive iteratively reweighted penalized least squares
}
\description{
Baseline drift always blurs or even swamps signals and deteriorates analytical results, particularly in multivariate analysis.  It is necessary to correct baseline drift to perform further data analysis. Simple or modified polynomial fitting has been found to be effective in some extent. However, this method requires user intervention and prone to variability especially in low signal-to-noise ratio environments. The proposed adaptive iteratively reweighted Penalized Least Squares (airPLS) algorithm doesn't require any user intervention and prior information, such as detected peaks. It iteratively changes weights of sum squares errors (SSE) between the fitted baseline and original signals, and the weights of SSE are obtained adaptively using between previously fitted baseline and original signals. This baseline estimator is general, fast and flexible in fitting baseline.
}
\details{
\tabular{ll}{
Package: \tab airPLS\cr
Type: \tab Package\cr
Version: \tab 1.0.0\cr
Date: \tab 2009-10-09\cr
License: \tab GPL (>= 2)\cr
}
}
\author{ yizeng liang<yizeng_liang@263.net>, zhimin zhang <zhangzhimin.csu@gmail.com>, chen shan <chenshan.csu@gmail.com>}                                                                                                                     
\keyword{ package }
