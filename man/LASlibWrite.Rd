% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{LASlibWrite}
\alias{LASlibWrite}
\title{Write a las file with LASlib}
\usage{
LASlibWrite(file, LASheader, X, Y, Z, I = integer(0), RN = integer(0),
  NoR = integer(0), SDF = integer(0), EoF = integer(0), C = integer(0),
  SA = integer(0), UD = integer(0), PSI = integer(0), T = numeric(0),
  R = integer(0), G = integer(0), B = integer(0))
}
\arguments{
\item{file}{character. filename of .las file}

\item{LASheader}{list a header from a LAS object}

\item{X}{numeric array X data}

\item{Y}{numeric array Y data}

\item{Z}{numeric array Z data}

\item{I}{integer array intensity data}

\item{RN}{integer array return number data}

\item{NoR}{integer array number of returns data}

\item{SDF}{integer array scan direction flag data}

\item{EoF}{integer array edge of flightline data}

\item{C}{integer array classification data}

\item{SA}{integer array scan angle data}

\item{UD}{integer array user data data}

\item{PSI}{integer array point source id data}

\item{T}{numeric array gpstime data}

\item{R}{integer array red data}

\item{G}{integer array green data}

\item{B}{integer array blue data}
}
\value{
void
}
\description{
Methods to write las files using LASlib
}
\details{
This function musn't be used as is. It is an internal function. Please use \link[lidR:writeLAS]{writeLAS} abstraction.
}

