\name{MarkWear.acclist}
\alias{MarkWear.acclist}
\alias{MarkWear.accfile}

\title{
Classify wear and non-wear time
}
\description{
This functions identifies sequences of zeroes of a given length to classify wear and non-wear time in accelerometer data files.
}
\usage{
MarkWear.acclist(object, value, nz = 0, keep.error = FALSE)
MarkWear.accfile(object, value, nz = 0, keep.error = FALSE)
}

\arguments{
  \item{object}{
an object of class \code{acclist} or \code{accfile}.
}
  \item{value}{
the length of the time window (in minutes) which contains zero values.
}
  \item{nz}{
the length of the time window (in minutes) of non-zero value sequences allowed between every two sequences of zero values.
}

  \item{keep.error}{
logical flag. If \code{FALSE} (default) data errors as identified by \code{\link{errorCts}} will be replaced by NAs.
}

}
\details{
Currently, this function is implemented for class \code{gt1m} only.
}

\value{
If \code{object} is of class \code{acclist}, a list of factors with two levels of the same length as the number of accelerometers files in \code{object}. If \code{object} is of class \code{accfile}, a single factor will be given. Levels are 'non-wear' and 'wear'.
}
\references{
Geraci M, Rich C, Sera F, Cortina-Borja M, Griffiths LJ, and Dezateux C (2012). Technical report on accelerometry data processing in the Millennium Cohort Study. London, UK: University College London. Available at \url{http://discovery.ucl.ac.uk/1361699}
}

\author{
Marco Geraci
}


\seealso{
\code{\link{readAccDir}}
}

\keyword{wear time}
\keyword{ Actigraph GT1M }
