\name{aggr.accfile}
\alias{aggr.accfile}

\title{
Aggregate Accelerometry Data
}
\description{
This function aggregates count values 
}

\usage{
aggr.accfile(object, by, x = NULL, y = NULL,
	keep.error = FALSE)
}

\arguments{
  \item{object}{
an object of class \code{accfile}.
  }
  \item{by}{
epoch.
}
  \item{x}{
counts.
}
  \item{y}{
steps.
}
  \item{keep.error}{
logical flag. Should errors be omitted?
}

}


\value{
\item{Counts }{aggregated counts}
\item{Steps }{aggregated steps}
\item{TimeStamp_agg }{time stamping}
}

\references{
Geraci M, Rich C, Sera F, Cortina-Borja M, Griffiths LJ, and Dezateux C (2012). Technical report on accelerometry data processing in the Millennium Cohort Study. London, UK: University College London. Available at \url{http://discovery.ucl.ac.uk/1361699}
}

\author{
Marco Geraci
}

\seealso{
\code{\link{collapse.accfile}}
}

\keyword{ collapse }
