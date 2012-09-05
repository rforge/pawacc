\name{collapse.fun}
\alias{collapse.fun}

\title{
Summary statistics
}
\description{
Accessory function for collapsing accelerometer files.
}
\usage{
collapse.fun(x, fun = list(mean = function(x) mean(x, na.rm = TRUE),
median = function(x) median(x, na.rm = TRUE),
sd = function(x) sd(x, na.rm = TRUE)))
}

\arguments{
  \item{x}{
numeric vector.
}
  \item{fun}{
named list of functions to be applied to \code{x}.
}
}

\value{
a list of named values of the same length as \code{fun}.
}

\author{
Marco Geraci
}

\seealso{
\code{\link{collapse.accfile}}
}

\keyword{ collapse }
