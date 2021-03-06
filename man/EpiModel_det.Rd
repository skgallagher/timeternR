% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{EpiModel_det}
\alias{EpiModel_det}
\title{EpiModel_det Example output from the \code{EpiModel} package for a deterministic model}
\format{
a \code{dcm} object from the \code{EpiModel} package.  This contains the following elements:
\describe{
\item{param}{the epidemic parameters passed into the model through param, with additional parameters added as necessary.}
\item{control}{the control settings passed into the model through control, with additional controls added as necessary.}
\item{epi}{a list of data frames, one for each epidemiological output from the model. Outputs for base models always include the size of each compartment, as well as flows in, out of, and between compartments.}
}
}
\usage{
EpiModel_det
}
\description{
This data is made from the SIR DCM/ICM example in the \href{http://statnet.github.io/tut/BasicICMs.html}{EpiModel vignette found here}.  We run the discrete compartmental model (DCM) for 300 steps and set the birth and death rates (a.rate, ds.rate, di.rate, dr.rate) to zero.  This is object is of class \code{dcm}.  The output details can be found with \code{?EpiModel::dcm}.
}
\examples{
## Look at structure
str(EpiModel_det)

## Look at SIR values
head(do.call('cbind', EpiModel_det$epi[c("s.num", "i.num", "r.num")]))
}
\keyword{datasets}
