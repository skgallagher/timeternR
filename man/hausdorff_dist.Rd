% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/containment-and-band-creation.R
\name{hausdorff_dist}
\alias{hausdorff_dist}
\title{Calculates the Hausdorff distance between 2 sets}
\usage{
hausdorff_dist(a, b)
}
\arguments{
\item{a}{assumed to either \code{convex_hull_structure} or
\code{delta_ball_structure} objects}

\item{b}{same class as a}
}
\value{
hausdorff distance between 2 sets
}
\description{
Note for delta-ball structure, this could over estimate by the
maximum of the 2 defining delta radi, whereas the convex hull structures'
hausdorff distance is exact.
}
