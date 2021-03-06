% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/agent-to-aggregate.R
\name{check_ordered}
\alias{check_ordered}
\title{checks if states within data frame are ordered as inputted (<=)}
\usage{
check_ordered(df, states, assert_error = TRUE)
}
\arguments{
\item{df}{data frame with individual agent information (n x p)}

\item{states}{time entered state, in expected order}

\item{assert_error}{boolean if we should raise error if ordering assumption
is violated.}
}
\value{
This function returns either
\itemize{
  \item TRUE, if the states are ordered,
  \item an error is observed (when assert_error = TRUE), \strong{or}
  \item a list of 2 data frames. The first, \code{ordering_df}, an (n x 3)
  data.frame, contains information per agent on if they violated the
  assumption ("error" column), and the ordering of their states ("ordering"
  column). The second, \code{summary_df} (k x 3) data frame contains
  information on the number of unique ordering ("ordering"), if they caused
  the assumption to be violated ("error") and the number of agents that had
  the ordering ("count"). Note that if an individual has \code{NA} for every 
  states' time, then they have a \code{NA} in their "error" column (this 
  is not the cause of the erroring).
}
}
\description{
This function assesses whether agents's time they enter each state is
correctly ordered. The assumption is that these would be ordered in increasing
values, with the allowance of \code{NA} values not effecting this decision.
}
\details{
If this important assumption is violated this function either raises an error
or provides the user with information on what when wrong - to allow the user
to how to corect the error (see \code{assert_error} to change between these
states).
}
\examples{
df_not_ordered <- data.frame(group1 = 1:5,
                             group2 = c(2:5,1))
output <- check_ordered(df_not_ordered, c("group1", "group2"),
                        assert_error = FALSE)
output

}
