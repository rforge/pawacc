\name{errorCts}
\alias{errorCts}
\alias{errorSteps}

%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Perform error checking
}
\description{
These functions look for errors in the data. A code is returned.
}
\usage{
errorCts(x, fault = 32767)
}

\arguments{
  \item{x}{
accelrometer counts or steps.
}
  \item{fault}{
numerical value that indicates voltage signal saturation (temporarily used for both accelerometer counts and steps).
  }
}
\details{
Error coded are as follow: 0, no error; 1, all values are 5-digit values or all one value;  2, negative values; 3, \code{NA}s.
}

\value{
a vector of the same length as \code{x}.
}

\author{
Marco Geraci
}



\seealso{
\code{\link{gt1m.accfile}}
}

\keyword{ error }
\keyword{ Actigraph GT1M }
