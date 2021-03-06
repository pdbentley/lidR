% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/VCI.r
\name{VCI}
\alias{VCI}
\title{Vertical Complexity Index}
\usage{
VCI(z, zmax, by = 1)
}
\arguments{
\item{z}{vector of z coordinates}

\item{zmax}{numeric. Used to turn the function entropy to the function vci.}

\item{by}{numeric. The thickness of the layers used (height bin)}
}
\value{
A number between 0 and 1
}
\description{
A fixed normalization of the entropy function (see references)
}
\examples{
z = runif(10000, 0, 10)

VCI(z, by = 1, zmax = 20)

z = abs(rnorm(10000, 10, 1))

# expected to be closer to 0.
VCI(z, by = 1, zmax = 20)
}
\references{
van Ewijk, K. Y., Treitz, P. M., & Scott, N. A. (2011). Characterizing Forest Succession in Central Ontario using LAS-derived Indices. Photogrammetric Engineering and Remote Sensing, 77(3), 261-269. Retrieved from <Go to ISI>://WOS:000288052100009
}
\seealso{
\link[lidR:entropy]{entropy}
}

