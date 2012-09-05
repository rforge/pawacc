\name{gt3x.acclist}
\alias{gt3x.acclist}

\title{
Read list of accelerometer files
}
\description{
This function reads a list of Actigraph GT3X accelerometer files.
}
\usage{
gt3x.acclist(accFileList, save)
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
}

\author{
Marco Geraci
}


\seealso{
\code{\link{readAccDir}}
}

\keyword{ accelerometer }
\keyword{ Actigraph GT3X }
