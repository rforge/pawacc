\name{gt1m.acclist}
\alias{gt1m.acclist}

\title{
Read list of accelerometer files
}
\description{
This function reads a list of Actigraph GT1M accelerometer files.
}
\usage{
gt1m.acclist(accFileList, save)
}

\arguments{
  \item{accFileList}{
an object of type \code{list}.
 }
  \item{save}{
either logical or character. See \code{\link{readAccDir}} for details.
}
}

\value{
An object of class \code{acclist}.
}

\references{
Actigraph (Pensacola, Florida).

Geraci M, Rich C, Sera F, Cortina-Borja M, Griffiths LJ, and Dezateux C (2012). Technical report on accelerometry data processing in the Millennium Cohort Study. London, UK: University College London. Available at \url{http://discovery.ucl.ac.uk/1361699}

}

\author{
Marco Geraci
}


\seealso{
\code{\link{readAccDir}}
}

\keyword{ accelerometer }
\keyword{ Actigraph GT1M }
